#ifndef DEVICE_COMPOSITE_CODEC_H_
#define DEVICE_COMPOSITE_CODEC_H_

#include <SIMDCAI/common.h>
#include <SIMDCAI/util.h>
#include <SIMDCAI/codecs.h>

namespace GPUGenie {

/**
 *  This class defines an integer coded for binary packing of blocks of 32 integers. Based on BlockPacker optionally
 *  uses delta encoding.
 *  The decoding methods are runnable from within a CUDA kernel or from the host
 *
 *  TODO define a more generic DeviceIntegerCODEC class first
 */
class DeviceBinaryPacking : public IntegerCODEC {

public:
	static const uint32_t MiniBlockSize = 32;
	static const uint32_t HowManyMiniBlocks = 4;
	static const uint32_t BlockSize = MiniBlockSize; // HowManyMiniBlocks * MiniBlockSize;
	static const uint32_t bits32 = 8;

	struct DeviceIntegratedBlockPacker {
		PURE_FUNCTION
		static uint32_t maxbits(const uint32_t *in, uint32_t &initoffset) {
			uint32_t accumulator = in[0] - initoffset;
			for (uint32_t k = 1; k < BitPackingHelpers::BlockSize; ++k) {
				accumulator |= in[k] - in[k - 1];
			}
			initoffset = in[BitPackingHelpers::BlockSize - 1];
			return gccbits(accumulator);
		}

		static void inline packblockwithoutmask(const uint32_t *in, uint32_t *out,
		                                        const uint32_t bit,
		                                        uint32_t &initoffset) {
			BitPackingHelpers::integratedfastpackwithoutmask(initoffset, in, out, bit);
			initoffset = *(in + BitPackingHelpers::BlockSize - 1);
		}
		static void inline unpackblock(const uint32_t *in, uint32_t *out,
		                               const uint32_t bit, uint32_t &initoffset) {
			BitPackingHelpers::integratedfastunpack(initoffset, in, out, bit);
			initoffset = *(out + BitPackingHelpers::BlockSize - 1);
		}
	};

	void encodeArray(uint32_t *in, const size_t length, uint32_t *out,
	                 size_t &nvalue) {
		checkifdivisibleby(length, BlockSize);
		const uint32_t *const initout(out);
		*out++ = static_cast<uint32_t>(length);
		uint32_t Bs[HowManyMiniBlocks];
		uint32_t init = 0;
		const uint32_t *const final = in + length;
		for (; in + HowManyMiniBlocks * MiniBlockSize <= final;
		        in += HowManyMiniBlocks * MiniBlockSize) {
			uint32_t tmpinit = init;
			for (uint32_t i = 0; i < HowManyMiniBlocks; ++i) {
				Bs[i] = DeviceIntegratedBlockPacker::maxbits(in + i * MiniBlockSize, tmpinit);
			}
			*out++ = (Bs[0] << 24) | (Bs[1] << 16) | (Bs[2] << 8) | Bs[3];
			for (uint32_t i = 0; i < HowManyMiniBlocks; ++i) {
				DeviceIntegratedBlockPacker::packblockwithoutmask(in + i * MiniBlockSize, out, Bs[i],
				                                  init);
				out += Bs[i];
			}
		}
		if (in < final) {
			size_t howmany = (final - in) / MiniBlockSize;
			uint32_t tmpinit = init;
			memset(&Bs[0], 0, HowManyMiniBlocks * sizeof(uint32_t));
			for (uint32_t i = 0; i < howmany; ++i) {
				Bs[i] = DeviceIntegratedBlockPacker::maxbits(in + i * MiniBlockSize, tmpinit);
			}
			*out++ = (Bs[0] << 24) | (Bs[1] << 16) | (Bs[2] << 8) | Bs[3];
			for (uint32_t i = 0; i < howmany; ++i) {
				DeviceIntegratedBlockPacker::packblockwithoutmask(in + i * MiniBlockSize, out, Bs[i],
				                                  init);
				out += Bs[i];
			}
		}
		nvalue = out - initout;
	}

	__device__ __host__
	const uint32_t *decodeArray(const uint32_t *in, const size_t /*length*/,
	                            uint32_t *out, size_t &nvalue) {
		const uint32_t actuallength = *in++;
		checkifdivisibleby(actuallength, BlockSize);
		const uint32_t *const initout(out);
		uint32_t Bs[HowManyMiniBlocks];
		uint32_t init = 0;
		for (; out < initout +
		        actuallength / (HowManyMiniBlocks * MiniBlockSize) *
		        HowManyMiniBlocks * MiniBlockSize;
		        out += HowManyMiniBlocks * MiniBlockSize) {
			Bs[0] = static_cast<uint8_t>(in[0] >> 24);
			Bs[1] = static_cast<uint8_t>(in[0] >> 16);
			Bs[2] = static_cast<uint8_t>(in[0] >> 8);
			Bs[3] = static_cast<uint8_t>(in[0]);
			++in;
			for (uint32_t i = 0; i < HowManyMiniBlocks; ++i) {
				DeviceIntegratedBlockPacker::unpackblock(in, out + i * MiniBlockSize, Bs[i], init);
				in += Bs[i];
			}
		}
		if (out < initout + actuallength) {
			size_t howmany = (initout + actuallength - out) / MiniBlockSize;
			Bs[0] = static_cast<uint8_t>(in[0] >> 24);
			Bs[1] = static_cast<uint8_t>(in[0] >> 16);
			Bs[2] = static_cast<uint8_t>(in[0] >> 8);
			Bs[3] = static_cast<uint8_t>(in[0]);
			++in;
			for (uint32_t i = 0; i < howmany; ++i) {
				DeviceIntegratedBlockPacker::unpackblock(in, out + i * MiniBlockSize, Bs[i], init);
				in += Bs[i];
			}
			out += howmany * MiniBlockSize;
		}
		nvalue = out - initout;
		return in;
	}
};

}

#endif

#include "DeviceBitPackingHelpers.h"

namespace genie
{
namespace compression
{

void __device__ __host__ __fastunpack0(const uint32_t *, uint32_t * out) {
    for (uint32_t i = 0; i < 32; ++i)
        *(out++) = 0;
}
void __fastpack0(const uint32_t *, uint32_t *) {}
void __fastpackwithoutmask0(const uint32_t *,
                            uint32_t *) {}

void __device__ __host__ __fastunpack32(const uint32_t * in,
                    uint32_t * out) {
    for (int k = 0; k < 32; ++k)
        out[k] = in[k];
}
void __fastpack32(const uint32_t * in, uint32_t * out) {
    for (int k = 0; k < 32; ++k)
        out[k] = in[k];
}

void __fastpackwithoutmask32(const uint32_t * in,
                             uint32_t * out) {
    for (int k = 0; k < 32; ++k)
        out[k] = in[k];
}

void __device__ __host__ __fastunpack1(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) & 1;
    out++;
    *out = ((*in) >> 1) & 1;
    out++;
    *out = ((*in) >> 2) & 1;
    out++;
    *out = ((*in) >> 3) & 1;
    out++;
    *out = ((*in) >> 4) & 1;
    out++;
    *out = ((*in) >> 5) & 1;
    out++;
    *out = ((*in) >> 6) & 1;
    out++;
    *out = ((*in) >> 7) & 1;
    out++;
    *out = ((*in) >> 8) & 1;
    out++;
    *out = ((*in) >> 9) & 1;
    out++;
    *out = ((*in) >> 10) & 1;
    out++;
    *out = ((*in) >> 11) & 1;
    out++;
    *out = ((*in) >> 12) & 1;
    out++;
    *out = ((*in) >> 13) & 1;
    out++;
    *out = ((*in) >> 14) & 1;
    out++;
    *out = ((*in) >> 15) & 1;
    out++;
    *out = ((*in) >> 16) & 1;
    out++;
    *out = ((*in) >> 17) & 1;
    out++;
    *out = ((*in) >> 18) & 1;
    out++;
    *out = ((*in) >> 19) & 1;
    out++;
    *out = ((*in) >> 20) & 1;
    out++;
    *out = ((*in) >> 21) & 1;
    out++;
    *out = ((*in) >> 22) & 1;
    out++;
    *out = ((*in) >> 23) & 1;
    out++;
    *out = ((*in) >> 24) & 1;
    out++;
    *out = ((*in) >> 25) & 1;
    out++;
    *out = ((*in) >> 26) & 1;
    out++;
    *out = ((*in) >> 27) & 1;
    out++;
    *out = ((*in) >> 28) & 1;
    out++;
    *out = ((*in) >> 29) & 1;
    out++;
    *out = ((*in) >> 30) & 1;
    out++;
    *out = ((*in) >> 31);
}

void __device__ __host__ __fastunpack2(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 2);
    out++;
    *out = ((*in) >> 2) % (1U << 2);
    out++;
    *out = ((*in) >> 4) % (1U << 2);
    out++;
    *out = ((*in) >> 6) % (1U << 2);
    out++;
    *out = ((*in) >> 8) % (1U << 2);
    out++;
    *out = ((*in) >> 10) % (1U << 2);
    out++;
    *out = ((*in) >> 12) % (1U << 2);
    out++;
    *out = ((*in) >> 14) % (1U << 2);
    out++;
    *out = ((*in) >> 16) % (1U << 2);
    out++;
    *out = ((*in) >> 18) % (1U << 2);
    out++;
    *out = ((*in) >> 20) % (1U << 2);
    out++;
    *out = ((*in) >> 22) % (1U << 2);
    out++;
    *out = ((*in) >> 24) % (1U << 2);
    out++;
    *out = ((*in) >> 26) % (1U << 2);
    out++;
    *out = ((*in) >> 28) % (1U << 2);
    out++;
    *out = ((*in) >> 30);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 2);
    out++;
    *out = ((*in) >> 2) % (1U << 2);
    out++;
    *out = ((*in) >> 4) % (1U << 2);
    out++;
    *out = ((*in) >> 6) % (1U << 2);
    out++;
    *out = ((*in) >> 8) % (1U << 2);
    out++;
    *out = ((*in) >> 10) % (1U << 2);
    out++;
    *out = ((*in) >> 12) % (1U << 2);
    out++;
    *out = ((*in) >> 14) % (1U << 2);
    out++;
    *out = ((*in) >> 16) % (1U << 2);
    out++;
    *out = ((*in) >> 18) % (1U << 2);
    out++;
    *out = ((*in) >> 20) % (1U << 2);
    out++;
    *out = ((*in) >> 22) % (1U << 2);
    out++;
    *out = ((*in) >> 24) % (1U << 2);
    out++;
    *out = ((*in) >> 26) % (1U << 2);
    out++;
    *out = ((*in) >> 28) % (1U << 2);
    out++;
    *out = ((*in) >> 30);
}

void __device__ __host__ __fastunpack3(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 3);
    out++;
    *out = ((*in) >> 3) % (1U << 3);
    out++;
    *out = ((*in) >> 6) % (1U << 3);
    out++;
    *out = ((*in) >> 9) % (1U << 3);
    out++;
    *out = ((*in) >> 12) % (1U << 3);
    out++;
    *out = ((*in) >> 15) % (1U << 3);
    out++;
    *out = ((*in) >> 18) % (1U << 3);
    out++;
    *out = ((*in) >> 21) % (1U << 3);
    out++;
    *out = ((*in) >> 24) % (1U << 3);
    out++;
    *out = ((*in) >> 27) % (1U << 3);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 1)) << (3 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 3);
    out++;
    *out = ((*in) >> 4) % (1U << 3);
    out++;
    *out = ((*in) >> 7) % (1U << 3);
    out++;
    *out = ((*in) >> 10) % (1U << 3);
    out++;
    *out = ((*in) >> 13) % (1U << 3);
    out++;
    *out = ((*in) >> 16) % (1U << 3);
    out++;
    *out = ((*in) >> 19) % (1U << 3);
    out++;
    *out = ((*in) >> 22) % (1U << 3);
    out++;
    *out = ((*in) >> 25) % (1U << 3);
    out++;
    *out = ((*in) >> 28) % (1U << 3);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 2)) << (3 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 3);
    out++;
    *out = ((*in) >> 5) % (1U << 3);
    out++;
    *out = ((*in) >> 8) % (1U << 3);
    out++;
    *out = ((*in) >> 11) % (1U << 3);
    out++;
    *out = ((*in) >> 14) % (1U << 3);
    out++;
    *out = ((*in) >> 17) % (1U << 3);
    out++;
    *out = ((*in) >> 20) % (1U << 3);
    out++;
    *out = ((*in) >> 23) % (1U << 3);
    out++;
    *out = ((*in) >> 26) % (1U << 3);
    out++;
    *out = ((*in) >> 29);
}

void __device__ __host__ __fastunpack5(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 5);
    out++;
    *out = ((*in) >> 5) % (1U << 5);
    out++;
    *out = ((*in) >> 10) % (1U << 5);
    out++;
    *out = ((*in) >> 15) % (1U << 5);
    out++;
    *out = ((*in) >> 20) % (1U << 5);
    out++;
    *out = ((*in) >> 25) % (1U << 5);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 3)) << (5 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 5);
    out++;
    *out = ((*in) >> 8) % (1U << 5);
    out++;
    *out = ((*in) >> 13) % (1U << 5);
    out++;
    *out = ((*in) >> 18) % (1U << 5);
    out++;
    *out = ((*in) >> 23) % (1U << 5);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 1)) << (5 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 5);
    out++;
    *out = ((*in) >> 6) % (1U << 5);
    out++;
    *out = ((*in) >> 11) % (1U << 5);
    out++;
    *out = ((*in) >> 16) % (1U << 5);
    out++;
    *out = ((*in) >> 21) % (1U << 5);
    out++;
    *out = ((*in) >> 26) % (1U << 5);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 4)) << (5 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 5);
    out++;
    *out = ((*in) >> 9) % (1U << 5);
    out++;
    *out = ((*in) >> 14) % (1U << 5);
    out++;
    *out = ((*in) >> 19) % (1U << 5);
    out++;
    *out = ((*in) >> 24) % (1U << 5);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 2)) << (5 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 5);
    out++;
    *out = ((*in) >> 7) % (1U << 5);
    out++;
    *out = ((*in) >> 12) % (1U << 5);
    out++;
    *out = ((*in) >> 17) % (1U << 5);
    out++;
    *out = ((*in) >> 22) % (1U << 5);
    out++;
    *out = ((*in) >> 27);
}

void __device__ __host__ __fastunpack6(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 6);
    out++;
    *out = ((*in) >> 6) % (1U << 6);
    out++;
    *out = ((*in) >> 12) % (1U << 6);
    out++;
    *out = ((*in) >> 18) % (1U << 6);
    out++;
    *out = ((*in) >> 24) % (1U << 6);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 4)) << (6 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 6);
    out++;
    *out = ((*in) >> 10) % (1U << 6);
    out++;
    *out = ((*in) >> 16) % (1U << 6);
    out++;
    *out = ((*in) >> 22) % (1U << 6);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 2)) << (6 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 6);
    out++;
    *out = ((*in) >> 8) % (1U << 6);
    out++;
    *out = ((*in) >> 14) % (1U << 6);
    out++;
    *out = ((*in) >> 20) % (1U << 6);
    out++;
    *out = ((*in) >> 26);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 6);
    out++;
    *out = ((*in) >> 6) % (1U << 6);
    out++;
    *out = ((*in) >> 12) % (1U << 6);
    out++;
    *out = ((*in) >> 18) % (1U << 6);
    out++;
    *out = ((*in) >> 24) % (1U << 6);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 4)) << (6 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 6);
    out++;
    *out = ((*in) >> 10) % (1U << 6);
    out++;
    *out = ((*in) >> 16) % (1U << 6);
    out++;
    *out = ((*in) >> 22) % (1U << 6);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 2)) << (6 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 6);
    out++;
    *out = ((*in) >> 8) % (1U << 6);
    out++;
    *out = ((*in) >> 14) % (1U << 6);
    out++;
    *out = ((*in) >> 20) % (1U << 6);
    out++;
    *out = ((*in) >> 26);
}

void __device__ __host__ __fastunpack7(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 7);
    out++;
    *out = ((*in) >> 7) % (1U << 7);
    out++;
    *out = ((*in) >> 14) % (1U << 7);
    out++;
    *out = ((*in) >> 21) % (1U << 7);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 3)) << (7 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 7);
    out++;
    *out = ((*in) >> 10) % (1U << 7);
    out++;
    *out = ((*in) >> 17) % (1U << 7);
    out++;
    *out = ((*in) >> 24) % (1U << 7);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 6)) << (7 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 7);
    out++;
    *out = ((*in) >> 13) % (1U << 7);
    out++;
    *out = ((*in) >> 20) % (1U << 7);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 2)) << (7 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 7);
    out++;
    *out = ((*in) >> 9) % (1U << 7);
    out++;
    *out = ((*in) >> 16) % (1U << 7);
    out++;
    *out = ((*in) >> 23) % (1U << 7);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 5)) << (7 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 7);
    out++;
    *out = ((*in) >> 12) % (1U << 7);
    out++;
    *out = ((*in) >> 19) % (1U << 7);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 1)) << (7 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 7);
    out++;
    *out = ((*in) >> 8) % (1U << 7);
    out++;
    *out = ((*in) >> 15) % (1U << 7);
    out++;
    *out = ((*in) >> 22) % (1U << 7);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 4)) << (7 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 7);
    out++;
    *out = ((*in) >> 11) % (1U << 7);
    out++;
    *out = ((*in) >> 18) % (1U << 7);
    out++;
    *out = ((*in) >> 25);
}

void __device__ __host__ __fastunpack9(const uint32_t * in,
                   uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 9);
    out++;
    *out = ((*in) >> 9) % (1U << 9);
    out++;
    *out = ((*in) >> 18) % (1U << 9);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 4)) << (9 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 9);
    out++;
    *out = ((*in) >> 13) % (1U << 9);
    out++;
    *out = ((*in) >> 22) % (1U << 9);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 8)) << (9 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 9);
    out++;
    *out = ((*in) >> 17) % (1U << 9);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 3)) << (9 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 9);
    out++;
    *out = ((*in) >> 12) % (1U << 9);
    out++;
    *out = ((*in) >> 21) % (1U << 9);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 7)) << (9 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 9);
    out++;
    *out = ((*in) >> 16) % (1U << 9);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 2)) << (9 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 9);
    out++;
    *out = ((*in) >> 11) % (1U << 9);
    out++;
    *out = ((*in) >> 20) % (1U << 9);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 6)) << (9 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 9);
    out++;
    *out = ((*in) >> 15) % (1U << 9);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 1)) << (9 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 9);
    out++;
    *out = ((*in) >> 10) % (1U << 9);
    out++;
    *out = ((*in) >> 19) % (1U << 9);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 5)) << (9 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 9);
    out++;
    *out = ((*in) >> 14) % (1U << 9);
    out++;
    *out = ((*in) >> 23);
}

void __device__ __host__ __fastunpack10(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 10);
    out++;
    *out = ((*in) >> 10) % (1U << 10);
    out++;
    *out = ((*in) >> 20) % (1U << 10);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 8)) << (10 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 10);
    out++;
    *out = ((*in) >> 18) % (1U << 10);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 6)) << (10 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 10);
    out++;
    *out = ((*in) >> 16) % (1U << 10);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 4)) << (10 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 10);
    out++;
    *out = ((*in) >> 14) % (1U << 10);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 2)) << (10 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 10);
    out++;
    *out = ((*in) >> 12) % (1U << 10);
    out++;
    *out = ((*in) >> 22);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 10);
    out++;
    *out = ((*in) >> 10) % (1U << 10);
    out++;
    *out = ((*in) >> 20) % (1U << 10);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 8)) << (10 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 10);
    out++;
    *out = ((*in) >> 18) % (1U << 10);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 6)) << (10 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 10);
    out++;
    *out = ((*in) >> 16) % (1U << 10);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 4)) << (10 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 10);
    out++;
    *out = ((*in) >> 14) % (1U << 10);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 2)) << (10 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 10);
    out++;
    *out = ((*in) >> 12) % (1U << 10);
    out++;
    *out = ((*in) >> 22);
}

void __device__ __host__ __fastunpack11(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 11);
    out++;
    *out = ((*in) >> 11) % (1U << 11);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 1)) << (11 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 11);
    out++;
    *out = ((*in) >> 12) % (1U << 11);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 2)) << (11 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 11);
    out++;
    *out = ((*in) >> 13) % (1U << 11);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 3)) << (11 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 11);
    out++;
    *out = ((*in) >> 14) % (1U << 11);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 4)) << (11 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 11);
    out++;
    *out = ((*in) >> 15) % (1U << 11);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 5)) << (11 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 11);
    out++;
    *out = ((*in) >> 16) % (1U << 11);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 6)) << (11 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 11);
    out++;
    *out = ((*in) >> 17) % (1U << 11);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 7)) << (11 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 11);
    out++;
    *out = ((*in) >> 18) % (1U << 11);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 8)) << (11 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 11);
    out++;
    *out = ((*in) >> 19) % (1U << 11);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 9)) << (11 - 9);
    out++;
    *out = ((*in) >> 9) % (1U << 11);
    out++;
    *out = ((*in) >> 20) % (1U << 11);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 10)) << (11 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 11);
    out++;
    *out = ((*in) >> 21);
}

void __device__ __host__ __fastunpack12(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 12);
    out++;
    *out = ((*in) >> 12) % (1U << 12);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 4)) << (12 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 12);
    out++;
    *out = ((*in) >> 16) % (1U << 12);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 8)) << (12 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 12);
    out++;
    *out = ((*in) >> 20);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 12);
    out++;
    *out = ((*in) >> 12) % (1U << 12);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 4)) << (12 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 12);
    out++;
    *out = ((*in) >> 16) % (1U << 12);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 8)) << (12 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 12);
    out++;
    *out = ((*in) >> 20);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 12);
    out++;
    *out = ((*in) >> 12) % (1U << 12);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 4)) << (12 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 12);
    out++;
    *out = ((*in) >> 16) % (1U << 12);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 8)) << (12 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 12);
    out++;
    *out = ((*in) >> 20);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 12);
    out++;
    *out = ((*in) >> 12) % (1U << 12);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 4)) << (12 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 12);
    out++;
    *out = ((*in) >> 16) % (1U << 12);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 8)) << (12 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 12);
    out++;
    *out = ((*in) >> 20);
}

void __device__ __host__ __fastunpack13(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 13);
    out++;
    *out = ((*in) >> 13) % (1U << 13);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 7)) << (13 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 13);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 1)) << (13 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 13);
    out++;
    *out = ((*in) >> 14) % (1U << 13);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 8)) << (13 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 13);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 2)) << (13 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 13);
    out++;
    *out = ((*in) >> 15) % (1U << 13);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 9)) << (13 - 9);
    out++;
    *out = ((*in) >> 9) % (1U << 13);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 3)) << (13 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 13);
    out++;
    *out = ((*in) >> 16) % (1U << 13);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 10)) << (13 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 13);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 4)) << (13 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 13);
    out++;
    *out = ((*in) >> 17) % (1U << 13);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 11)) << (13 - 11);
    out++;
    *out = ((*in) >> 11) % (1U << 13);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 5)) << (13 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 13);
    out++;
    *out = ((*in) >> 18) % (1U << 13);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 12)) << (13 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 13);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 6)) << (13 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 13);
    out++;
    *out = ((*in) >> 19);
}

void __device__ __host__ __fastunpack14(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 14);
    out++;
    *out = ((*in) >> 14) % (1U << 14);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 10)) << (14 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 14);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 6)) << (14 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 14);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 2)) << (14 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 14);
    out++;
    *out = ((*in) >> 16) % (1U << 14);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 12)) << (14 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 14);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 8)) << (14 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 14);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 4)) << (14 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 14);
    out++;
    *out = ((*in) >> 18);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 14);
    out++;
    *out = ((*in) >> 14) % (1U << 14);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 10)) << (14 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 14);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 6)) << (14 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 14);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 2)) << (14 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 14);
    out++;
    *out = ((*in) >> 16) % (1U << 14);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 12)) << (14 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 14);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 8)) << (14 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 14);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 4)) << (14 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 14);
    out++;
    *out = ((*in) >> 18);
}

void __device__ __host__ __fastunpack15(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 15);
    out++;
    *out = ((*in) >> 15) % (1U << 15);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 13)) << (15 - 13);
    out++;
    *out = ((*in) >> 13) % (1U << 15);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 11)) << (15 - 11);
    out++;
    *out = ((*in) >> 11) % (1U << 15);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 9)) << (15 - 9);
    out++;
    *out = ((*in) >> 9) % (1U << 15);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 7)) << (15 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 15);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 5)) << (15 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 15);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 3)) << (15 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 15);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 1)) << (15 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 15);
    out++;
    *out = ((*in) >> 16) % (1U << 15);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 14)) << (15 - 14);
    out++;
    *out = ((*in) >> 14) % (1U << 15);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 12)) << (15 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 15);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 10)) << (15 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 15);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 8)) << (15 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 15);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 6)) << (15 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 15);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 4)) << (15 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 15);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 2)) << (15 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 15);
    out++;
    *out = ((*in) >> 17);
}

void __device__ __host__ __fastunpack17(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 2)) << (17 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 17);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 4)) << (17 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 17);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 6)) << (17 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 17);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 8)) << (17 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 17);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 10)) << (17 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 17);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 12)) << (17 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 17);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 14)) << (17 - 14);
    out++;
    *out = ((*in) >> 14) % (1U << 17);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 16)) << (17 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 1)) << (17 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 17);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 3)) << (17 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 17);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 5)) << (17 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 17);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 7)) << (17 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 17);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 9)) << (17 - 9);
    out++;
    *out = ((*in) >> 9) % (1U << 17);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 11)) << (17 - 11);
    out++;
    *out = ((*in) >> 11) % (1U << 17);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 13)) << (17 - 13);
    out++;
    *out = ((*in) >> 13) % (1U << 17);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 15)) << (17 - 15);
    out++;
    *out = ((*in) >> 15);
}

void __device__ __host__ __fastunpack18(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 4)) << (18 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 18);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 8)) << (18 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 18);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 12)) << (18 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 18);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 16)) << (18 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 2)) << (18 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 18);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 6)) << (18 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 18);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 10)) << (18 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 18);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 14)) << (18 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 4)) << (18 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 18);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 8)) << (18 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 18);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 12)) << (18 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 18);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 16)) << (18 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 2)) << (18 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 18);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 6)) << (18 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 18);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 10)) << (18 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 18);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 14)) << (18 - 14);
    out++;
    *out = ((*in) >> 14);
}

void __device__ __host__ __fastunpack19(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 6)) << (19 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 19);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 12)) << (19 - 12);
    out++;
    *out = ((*in) >> 12) % (1U << 19);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 18)) << (19 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 5)) << (19 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 19);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 11)) << (19 - 11);
    out++;
    *out = ((*in) >> 11) % (1U << 19);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 17)) << (19 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 4)) << (19 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 19);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 10)) << (19 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 19);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 16)) << (19 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 3)) << (19 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 19);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 9)) << (19 - 9);
    out++;
    *out = ((*in) >> 9) % (1U << 19);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 15)) << (19 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 2)) << (19 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 19);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 8)) << (19 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 19);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 14)) << (19 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 1)) << (19 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 19);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 7)) << (19 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 19);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 13)) << (19 - 13);
    out++;
    *out = ((*in) >> 13);
}

void __device__ __host__ __fastunpack20(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 8)) << (20 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 20);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 16)) << (20 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 4)) << (20 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 20);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 12)) << (20 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 8)) << (20 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 20);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 16)) << (20 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 4)) << (20 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 20);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 12)) << (20 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 8)) << (20 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 20);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 16)) << (20 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 4)) << (20 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 20);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 12)) << (20 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 8)) << (20 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 20);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 16)) << (20 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 4)) << (20 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 20);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 12)) << (20 - 12);
    out++;
    *out = ((*in) >> 12);
}

void __device__ __host__ __fastunpack21(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 21);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 10)) << (21 - 10);
    out++;
    *out = ((*in) >> 10) % (1U << 21);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 20)) << (21 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 9)) << (21 - 9);
    out++;
    *out = ((*in) >> 9) % (1U << 21);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 19)) << (21 - 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 8)) << (21 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 21);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 18)) << (21 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 7)) << (21 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 21);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 17)) << (21 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 6)) << (21 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 21);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 16)) << (21 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 5)) << (21 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 21);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 15)) << (21 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 4)) << (21 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 21);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 14)) << (21 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 3)) << (21 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 21);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 13)) << (21 - 13);
    out++;
    *out = ((*in) >> 13);
    ++in;
    *out |= ((*in) % (1U << 2)) << (21 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 21);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 12)) << (21 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 1)) << (21 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 21);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 11)) << (21 - 11);
    out++;
    *out = ((*in) >> 11);
}

void __device__ __host__ __fastunpack22(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 12)) << (22 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 2)) << (22 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 22);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 14)) << (22 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 4)) << (22 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 22);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 16)) << (22 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 6)) << (22 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 22);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 18)) << (22 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 8)) << (22 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 22);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 20)) << (22 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 10)) << (22 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 12)) << (22 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 2)) << (22 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 22);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 14)) << (22 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 4)) << (22 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 22);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 16)) << (22 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 6)) << (22 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 22);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 18)) << (22 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 8)) << (22 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 22);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 20)) << (22 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 10)) << (22 - 10);
    out++;
    *out = ((*in) >> 10);
}

void __device__ __host__ __fastunpack23(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 23);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 14)) << (23 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 5)) << (23 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 23);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 19)) << (23 - 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 10)) << (23 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 1)) << (23 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 23);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 15)) << (23 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 6)) << (23 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 23);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 20)) << (23 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 11)) << (23 - 11);
    out++;
    *out = ((*in) >> 11);
    ++in;
    *out |= ((*in) % (1U << 2)) << (23 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 23);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 16)) << (23 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 7)) << (23 - 7);
    out++;
    *out = ((*in) >> 7) % (1U << 23);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 21)) << (23 - 21);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 12)) << (23 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 3)) << (23 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 23);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 17)) << (23 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 8)) << (23 - 8);
    out++;
    *out = ((*in) >> 8) % (1U << 23);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 22)) << (23 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 13)) << (23 - 13);
    out++;
    *out = ((*in) >> 13);
    ++in;
    *out |= ((*in) % (1U << 4)) << (23 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 23);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 18)) << (23 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 9)) << (23 - 9);
    out++;
    *out = ((*in) >> 9);
}

void __device__ __host__ __fastunpack24(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 16)) << (24 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 8)) << (24 - 8);
    out++;
    *out = ((*in) >> 8);
}

void __device__ __host__ __fastunpack25(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 25);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 18)) << (25 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 11)) << (25 - 11);
    out++;
    *out = ((*in) >> 11);
    ++in;
    *out |= ((*in) % (1U << 4)) << (25 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 25);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 22)) << (25 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 15)) << (25 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 8)) << (25 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 1)) << (25 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 25);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 19)) << (25 - 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 12)) << (25 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 5)) << (25 - 5);
    out++;
    *out = ((*in) >> 5) % (1U << 25);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 23)) << (25 - 23);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 16)) << (25 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 9)) << (25 - 9);
    out++;
    *out = ((*in) >> 9);
    ++in;
    *out |= ((*in) % (1U << 2)) << (25 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 25);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 20)) << (25 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 13)) << (25 - 13);
    out++;
    *out = ((*in) >> 13);
    ++in;
    *out |= ((*in) % (1U << 6)) << (25 - 6);
    out++;
    *out = ((*in) >> 6) % (1U << 25);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 24)) << (25 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 17)) << (25 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 10)) << (25 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 3)) << (25 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 25);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 21)) << (25 - 21);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 14)) << (25 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 7)) << (25 - 7);
    out++;
    *out = ((*in) >> 7);
}

void __device__ __host__ __fastunpack26(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 20)) << (26 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 14)) << (26 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 8)) << (26 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 2)) << (26 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 26);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 22)) << (26 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 16)) << (26 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 10)) << (26 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 4)) << (26 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 26);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 24)) << (26 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 18)) << (26 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 12)) << (26 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 6)) << (26 - 6);
    out++;
    *out = ((*in) >> 6);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 20)) << (26 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 14)) << (26 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 8)) << (26 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 2)) << (26 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 26);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 22)) << (26 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 16)) << (26 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 10)) << (26 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 4)) << (26 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 26);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 24)) << (26 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 18)) << (26 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 12)) << (26 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 6)) << (26 - 6);
    out++;
    *out = ((*in) >> 6);
}

void __device__ __host__ __fastunpack27(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 27);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 22)) << (27 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 17)) << (27 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 12)) << (27 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 7)) << (27 - 7);
    out++;
    *out = ((*in) >> 7);
    ++in;
    *out |= ((*in) % (1U << 2)) << (27 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 27);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 24)) << (27 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 19)) << (27 - 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 14)) << (27 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 9)) << (27 - 9);
    out++;
    *out = ((*in) >> 9);
    ++in;
    *out |= ((*in) % (1U << 4)) << (27 - 4);
    out++;
    *out = ((*in) >> 4) % (1U << 27);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 26)) << (27 - 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 21)) << (27 - 21);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 16)) << (27 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 11)) << (27 - 11);
    out++;
    *out = ((*in) >> 11);
    ++in;
    *out |= ((*in) % (1U << 6)) << (27 - 6);
    out++;
    *out = ((*in) >> 6);
    ++in;
    *out |= ((*in) % (1U << 1)) << (27 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 27);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 23)) << (27 - 23);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 18)) << (27 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 13)) << (27 - 13);
    out++;
    *out = ((*in) >> 13);
    ++in;
    *out |= ((*in) % (1U << 8)) << (27 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 3)) << (27 - 3);
    out++;
    *out = ((*in) >> 3) % (1U << 27);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 25)) << (27 - 25);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 20)) << (27 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 15)) << (27 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 10)) << (27 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 5)) << (27 - 5);
    out++;
    *out = ((*in) >> 5);
}

void __device__ __host__ __fastunpack28(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 24)) << (28 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 20)) << (28 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 16)) << (28 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 12)) << (28 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 8)) << (28 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 4)) << (28 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 24)) << (28 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 20)) << (28 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 16)) << (28 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 12)) << (28 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 8)) << (28 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 4)) << (28 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 24)) << (28 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 20)) << (28 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 16)) << (28 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 12)) << (28 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 8)) << (28 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 4)) << (28 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 24)) << (28 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 20)) << (28 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 16)) << (28 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 12)) << (28 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 8)) << (28 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 4)) << (28 - 4);
    out++;
    *out = ((*in) >> 4);
}

void __device__ __host__ __fastunpack29(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 29);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 26)) << (29 - 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 23)) << (29 - 23);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 20)) << (29 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 17)) << (29 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 14)) << (29 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 11)) << (29 - 11);
    out++;
    *out = ((*in) >> 11);
    ++in;
    *out |= ((*in) % (1U << 8)) << (29 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 5)) << (29 - 5);
    out++;
    *out = ((*in) >> 5);
    ++in;
    *out |= ((*in) % (1U << 2)) << (29 - 2);
    out++;
    *out = ((*in) >> 2) % (1U << 29);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 28)) << (29 - 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 25)) << (29 - 25);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 22)) << (29 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 19)) << (29 - 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 16)) << (29 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 13)) << (29 - 13);
    out++;
    *out = ((*in) >> 13);
    ++in;
    *out |= ((*in) % (1U << 10)) << (29 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 7)) << (29 - 7);
    out++;
    *out = ((*in) >> 7);
    ++in;
    *out |= ((*in) % (1U << 4)) << (29 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    *out |= ((*in) % (1U << 1)) << (29 - 1);
    out++;
    *out = ((*in) >> 1) % (1U << 29);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 27)) << (29 - 27);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 24)) << (29 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 21)) << (29 - 21);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 18)) << (29 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 15)) << (29 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 12)) << (29 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 9)) << (29 - 9);
    out++;
    *out = ((*in) >> 9);
    ++in;
    *out |= ((*in) % (1U << 6)) << (29 - 6);
    out++;
    *out = ((*in) >> 6);
    ++in;
    *out |= ((*in) % (1U << 3)) << (29 - 3);
    out++;
    *out = ((*in) >> 3);
}

void __device__ __host__ __fastunpack30(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 30);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 28)) << (30 - 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 26)) << (30 - 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 24)) << (30 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 22)) << (30 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 20)) << (30 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 18)) << (30 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 16)) << (30 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 14)) << (30 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 12)) << (30 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 10)) << (30 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 8)) << (30 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 6)) << (30 - 6);
    out++;
    *out = ((*in) >> 6);
    ++in;
    *out |= ((*in) % (1U << 4)) << (30 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    *out |= ((*in) % (1U << 2)) << (30 - 2);
    out++;
    *out = ((*in) >> 2);
    ++in;
    out++;
    *out = ((*in) >> 0) % (1U << 30);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 28)) << (30 - 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 26)) << (30 - 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 24)) << (30 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 22)) << (30 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 20)) << (30 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 18)) << (30 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 16)) << (30 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 14)) << (30 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 12)) << (30 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 10)) << (30 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 8)) << (30 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 6)) << (30 - 6);
    out++;
    *out = ((*in) >> 6);
    ++in;
    *out |= ((*in) % (1U << 4)) << (30 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    *out |= ((*in) % (1U << 2)) << (30 - 2);
    out++;
    *out = ((*in) >> 2);
}

void __device__ __host__ __fastunpack31(const uint32_t * in,
                    uint32_t * out) {
    *out = ((*in) >> 0) % (1U << 31);
    out++;
    *out = ((*in) >> 31);
    ++in;
    *out |= ((*in) % (1U << 30)) << (31 - 30);
    out++;
    *out = ((*in) >> 30);
    ++in;
    *out |= ((*in) % (1U << 29)) << (31 - 29);
    out++;
    *out = ((*in) >> 29);
    ++in;
    *out |= ((*in) % (1U << 28)) << (31 - 28);
    out++;
    *out = ((*in) >> 28);
    ++in;
    *out |= ((*in) % (1U << 27)) << (31 - 27);
    out++;
    *out = ((*in) >> 27);
    ++in;
    *out |= ((*in) % (1U << 26)) << (31 - 26);
    out++;
    *out = ((*in) >> 26);
    ++in;
    *out |= ((*in) % (1U << 25)) << (31 - 25);
    out++;
    *out = ((*in) >> 25);
    ++in;
    *out |= ((*in) % (1U << 24)) << (31 - 24);
    out++;
    *out = ((*in) >> 24);
    ++in;
    *out |= ((*in) % (1U << 23)) << (31 - 23);
    out++;
    *out = ((*in) >> 23);
    ++in;
    *out |= ((*in) % (1U << 22)) << (31 - 22);
    out++;
    *out = ((*in) >> 22);
    ++in;
    *out |= ((*in) % (1U << 21)) << (31 - 21);
    out++;
    *out = ((*in) >> 21);
    ++in;
    *out |= ((*in) % (1U << 20)) << (31 - 20);
    out++;
    *out = ((*in) >> 20);
    ++in;
    *out |= ((*in) % (1U << 19)) << (31 - 19);
    out++;
    *out = ((*in) >> 19);
    ++in;
    *out |= ((*in) % (1U << 18)) << (31 - 18);
    out++;
    *out = ((*in) >> 18);
    ++in;
    *out |= ((*in) % (1U << 17)) << (31 - 17);
    out++;
    *out = ((*in) >> 17);
    ++in;
    *out |= ((*in) % (1U << 16)) << (31 - 16);
    out++;
    *out = ((*in) >> 16);
    ++in;
    *out |= ((*in) % (1U << 15)) << (31 - 15);
    out++;
    *out = ((*in) >> 15);
    ++in;
    *out |= ((*in) % (1U << 14)) << (31 - 14);
    out++;
    *out = ((*in) >> 14);
    ++in;
    *out |= ((*in) % (1U << 13)) << (31 - 13);
    out++;
    *out = ((*in) >> 13);
    ++in;
    *out |= ((*in) % (1U << 12)) << (31 - 12);
    out++;
    *out = ((*in) >> 12);
    ++in;
    *out |= ((*in) % (1U << 11)) << (31 - 11);
    out++;
    *out = ((*in) >> 11);
    ++in;
    *out |= ((*in) % (1U << 10)) << (31 - 10);
    out++;
    *out = ((*in) >> 10);
    ++in;
    *out |= ((*in) % (1U << 9)) << (31 - 9);
    out++;
    *out = ((*in) >> 9);
    ++in;
    *out |= ((*in) % (1U << 8)) << (31 - 8);
    out++;
    *out = ((*in) >> 8);
    ++in;
    *out |= ((*in) % (1U << 7)) << (31 - 7);
    out++;
    *out = ((*in) >> 7);
    ++in;
    *out |= ((*in) % (1U << 6)) << (31 - 6);
    out++;
    *out = ((*in) >> 6);
    ++in;
    *out |= ((*in) % (1U << 5)) << (31 - 5);
    out++;
    *out = ((*in) >> 5);
    ++in;
    *out |= ((*in) % (1U << 4)) << (31 - 4);
    out++;
    *out = ((*in) >> 4);
    ++in;
    *out |= ((*in) % (1U << 3)) << (31 - 3);
    out++;
    *out = ((*in) >> 3);
    ++in;
    *out |= ((*in) % (1U << 2)) << (31 - 2);
    out++;
    *out = ((*in) >> 2);
    ++in;
    *out |= ((*in) % (1U << 1)) << (31 - 1);
    out++;
    *out = ((*in) >> 1);
}

void __device__ __host__ __fastunpack4(const uint32_t * in,
                   uint32_t * out) {
    for (uint32_t outer = 0; outer < 4; ++outer) {
        for (uint32_t inwordpointer = 0; inwordpointer < 32; inwordpointer += 4)
            * (out++) = ((*in) >> inwordpointer) % (1U << 4);
        ++in;
    }
}

void __device__ __host__ __fastunpack8(const uint32_t * in,
                   uint32_t * out) {
    for (uint32_t outer = 0; outer < 8; ++outer) {
        for (uint32_t inwordpointer = 0; inwordpointer < 32; inwordpointer += 8)
            * (out++) = ((*in) >> inwordpointer) % (1U << 8);
        ++in;
    }
}

void __device__ __host__ __fastunpack16(const uint32_t * in,
                    uint32_t * out) {
    for (uint32_t outer = 0; outer < 16; ++outer) {
        for (uint32_t inwordpointer = 0; inwordpointer < 32; inwordpointer += 16)
            * (out++) = ((*in) >> inwordpointer) % (1U << 16);
        ++in;
    }
}

void __fastpack1(const uint32_t * in, uint32_t * out) {
    *out = (*in) & 1;
    ++in;
    *out |= ((*in) & 1) << 1;
    ++in;
    *out |= ((*in) & 1) << 2;
    ++in;
    *out |= ((*in) & 1) << 3;
    ++in;
    *out |= ((*in) & 1) << 4;
    ++in;
    *out |= ((*in) & 1) << 5;
    ++in;
    *out |= ((*in) & 1) << 6;
    ++in;
    *out |= ((*in) & 1) << 7;
    ++in;
    *out |= ((*in) & 1) << 8;
    ++in;
    *out |= ((*in) & 1) << 9;
    ++in;
    *out |= ((*in) & 1) << 10;
    ++in;
    *out |= ((*in) & 1) << 11;
    ++in;
    *out |= ((*in) & 1) << 12;
    ++in;
    *out |= ((*in) & 1) << 13;
    ++in;
    *out |= ((*in) & 1) << 14;
    ++in;
    *out |= ((*in) & 1) << 15;
    ++in;
    *out |= ((*in) & 1) << 16;
    ++in;
    *out |= ((*in) & 1) << 17;
    ++in;
    *out |= ((*in) & 1) << 18;
    ++in;
    *out |= ((*in) & 1) << 19;
    ++in;
    *out |= ((*in) & 1) << 20;
    ++in;
    *out |= ((*in) & 1) << 21;
    ++in;
    *out |= ((*in) & 1) << 22;
    ++in;
    *out |= ((*in) & 1) << 23;
    ++in;
    *out |= ((*in) & 1) << 24;
    ++in;
    *out |= ((*in) & 1) << 25;
    ++in;
    *out |= ((*in) & 1) << 26;
    ++in;
    *out |= ((*in) & 1) << 27;
    ++in;
    *out |= ((*in) & 1) << 28;
    ++in;
    *out |= ((*in) & 1) << 29;
    ++in;
    *out |= ((*in) & 1) << 30;
    ++in;
    *out |= ((*in)) << 31;
}

void __fastpack2(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 2);
    ++in;
    *out |= ((*in) % (1U << 2)) << 2;
    ++in;
    *out |= ((*in) % (1U << 2)) << 4;
    ++in;
    *out |= ((*in) % (1U << 2)) << 6;
    ++in;
    *out |= ((*in) % (1U << 2)) << 8;
    ++in;
    *out |= ((*in) % (1U << 2)) << 10;
    ++in;
    *out |= ((*in) % (1U << 2)) << 12;
    ++in;
    *out |= ((*in) % (1U << 2)) << 14;
    ++in;
    *out |= ((*in) % (1U << 2)) << 16;
    ++in;
    *out |= ((*in) % (1U << 2)) << 18;
    ++in;
    *out |= ((*in) % (1U << 2)) << 20;
    ++in;
    *out |= ((*in) % (1U << 2)) << 22;
    ++in;
    *out |= ((*in) % (1U << 2)) << 24;
    ++in;
    *out |= ((*in) % (1U << 2)) << 26;
    ++in;
    *out |= ((*in) % (1U << 2)) << 28;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    ++in;
    *out = (*in) % (1U << 2);
    ++in;
    *out |= ((*in) % (1U << 2)) << 2;
    ++in;
    *out |= ((*in) % (1U << 2)) << 4;
    ++in;
    *out |= ((*in) % (1U << 2)) << 6;
    ++in;
    *out |= ((*in) % (1U << 2)) << 8;
    ++in;
    *out |= ((*in) % (1U << 2)) << 10;
    ++in;
    *out |= ((*in) % (1U << 2)) << 12;
    ++in;
    *out |= ((*in) % (1U << 2)) << 14;
    ++in;
    *out |= ((*in) % (1U << 2)) << 16;
    ++in;
    *out |= ((*in) % (1U << 2)) << 18;
    ++in;
    *out |= ((*in) % (1U << 2)) << 20;
    ++in;
    *out |= ((*in) % (1U << 2)) << 22;
    ++in;
    *out |= ((*in) % (1U << 2)) << 24;
    ++in;
    *out |= ((*in) % (1U << 2)) << 26;
    ++in;
    *out |= ((*in) % (1U << 2)) << 28;
    ++in;
    *out |= ((*in)) << 30;
}

void __fastpack3(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 3);
    ++in;
    *out |= ((*in) % (1U << 3)) << 3;
    ++in;
    *out |= ((*in) % (1U << 3)) << 6;
    ++in;
    *out |= ((*in) % (1U << 3)) << 9;
    ++in;
    *out |= ((*in) % (1U << 3)) << 12;
    ++in;
    *out |= ((*in) % (1U << 3)) << 15;
    ++in;
    *out |= ((*in) % (1U << 3)) << 18;
    ++in;
    *out |= ((*in) % (1U << 3)) << 21;
    ++in;
    *out |= ((*in) % (1U << 3)) << 24;
    ++in;
    *out |= ((*in) % (1U << 3)) << 27;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 3)) >> (3 - 1);
    ++in;
    *out |= ((*in) % (1U << 3)) << 1;
    ++in;
    *out |= ((*in) % (1U << 3)) << 4;
    ++in;
    *out |= ((*in) % (1U << 3)) << 7;
    ++in;
    *out |= ((*in) % (1U << 3)) << 10;
    ++in;
    *out |= ((*in) % (1U << 3)) << 13;
    ++in;
    *out |= ((*in) % (1U << 3)) << 16;
    ++in;
    *out |= ((*in) % (1U << 3)) << 19;
    ++in;
    *out |= ((*in) % (1U << 3)) << 22;
    ++in;
    *out |= ((*in) % (1U << 3)) << 25;
    ++in;
    *out |= ((*in) % (1U << 3)) << 28;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 3)) >> (3 - 2);
    ++in;
    *out |= ((*in) % (1U << 3)) << 2;
    ++in;
    *out |= ((*in) % (1U << 3)) << 5;
    ++in;
    *out |= ((*in) % (1U << 3)) << 8;
    ++in;
    *out |= ((*in) % (1U << 3)) << 11;
    ++in;
    *out |= ((*in) % (1U << 3)) << 14;
    ++in;
    *out |= ((*in) % (1U << 3)) << 17;
    ++in;
    *out |= ((*in) % (1U << 3)) << 20;
    ++in;
    *out |= ((*in) % (1U << 3)) << 23;
    ++in;
    *out |= ((*in) % (1U << 3)) << 26;
    ++in;
    *out |= ((*in)) << 29;
}

void __fastpack4(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 4);
    ++in;
    *out |= ((*in) % (1U << 4)) << 4;
    ++in;
    *out |= ((*in) % (1U << 4)) << 8;
    ++in;
    *out |= ((*in) % (1U << 4)) << 12;
    ++in;
    *out |= ((*in) % (1U << 4)) << 16;
    ++in;
    *out |= ((*in) % (1U << 4)) << 20;
    ++in;
    *out |= ((*in) % (1U << 4)) << 24;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    ++in;
    *out = (*in) % (1U << 4);
    ++in;
    *out |= ((*in) % (1U << 4)) << 4;
    ++in;
    *out |= ((*in) % (1U << 4)) << 8;
    ++in;
    *out |= ((*in) % (1U << 4)) << 12;
    ++in;
    *out |= ((*in) % (1U << 4)) << 16;
    ++in;
    *out |= ((*in) % (1U << 4)) << 20;
    ++in;
    *out |= ((*in) % (1U << 4)) << 24;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    ++in;
    *out = (*in) % (1U << 4);
    ++in;
    *out |= ((*in) % (1U << 4)) << 4;
    ++in;
    *out |= ((*in) % (1U << 4)) << 8;
    ++in;
    *out |= ((*in) % (1U << 4)) << 12;
    ++in;
    *out |= ((*in) % (1U << 4)) << 16;
    ++in;
    *out |= ((*in) % (1U << 4)) << 20;
    ++in;
    *out |= ((*in) % (1U << 4)) << 24;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    ++in;
    *out = (*in) % (1U << 4);
    ++in;
    *out |= ((*in) % (1U << 4)) << 4;
    ++in;
    *out |= ((*in) % (1U << 4)) << 8;
    ++in;
    *out |= ((*in) % (1U << 4)) << 12;
    ++in;
    *out |= ((*in) % (1U << 4)) << 16;
    ++in;
    *out |= ((*in) % (1U << 4)) << 20;
    ++in;
    *out |= ((*in) % (1U << 4)) << 24;
    ++in;
    *out |= ((*in)) << 28;
}

void __fastpack5(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 5);
    ++in;
    *out |= ((*in) % (1U << 5)) << 5;
    ++in;
    *out |= ((*in) % (1U << 5)) << 10;
    ++in;
    *out |= ((*in) % (1U << 5)) << 15;
    ++in;
    *out |= ((*in) % (1U << 5)) << 20;
    ++in;
    *out |= ((*in) % (1U << 5)) << 25;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 5)) >> (5 - 3);
    ++in;
    *out |= ((*in) % (1U << 5)) << 3;
    ++in;
    *out |= ((*in) % (1U << 5)) << 8;
    ++in;
    *out |= ((*in) % (1U << 5)) << 13;
    ++in;
    *out |= ((*in) % (1U << 5)) << 18;
    ++in;
    *out |= ((*in) % (1U << 5)) << 23;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 5)) >> (5 - 1);
    ++in;
    *out |= ((*in) % (1U << 5)) << 1;
    ++in;
    *out |= ((*in) % (1U << 5)) << 6;
    ++in;
    *out |= ((*in) % (1U << 5)) << 11;
    ++in;
    *out |= ((*in) % (1U << 5)) << 16;
    ++in;
    *out |= ((*in) % (1U << 5)) << 21;
    ++in;
    *out |= ((*in) % (1U << 5)) << 26;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 5)) >> (5 - 4);
    ++in;
    *out |= ((*in) % (1U << 5)) << 4;
    ++in;
    *out |= ((*in) % (1U << 5)) << 9;
    ++in;
    *out |= ((*in) % (1U << 5)) << 14;
    ++in;
    *out |= ((*in) % (1U << 5)) << 19;
    ++in;
    *out |= ((*in) % (1U << 5)) << 24;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 5)) >> (5 - 2);
    ++in;
    *out |= ((*in) % (1U << 5)) << 2;
    ++in;
    *out |= ((*in) % (1U << 5)) << 7;
    ++in;
    *out |= ((*in) % (1U << 5)) << 12;
    ++in;
    *out |= ((*in) % (1U << 5)) << 17;
    ++in;
    *out |= ((*in) % (1U << 5)) << 22;
    ++in;
    *out |= ((*in)) << 27;
}

void __fastpack6(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 6);
    ++in;
    *out |= ((*in) % (1U << 6)) << 6;
    ++in;
    *out |= ((*in) % (1U << 6)) << 12;
    ++in;
    *out |= ((*in) % (1U << 6)) << 18;
    ++in;
    *out |= ((*in) % (1U << 6)) << 24;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 6)) >> (6 - 4);
    ++in;
    *out |= ((*in) % (1U << 6)) << 4;
    ++in;
    *out |= ((*in) % (1U << 6)) << 10;
    ++in;
    *out |= ((*in) % (1U << 6)) << 16;
    ++in;
    *out |= ((*in) % (1U << 6)) << 22;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 6)) >> (6 - 2);
    ++in;
    *out |= ((*in) % (1U << 6)) << 2;
    ++in;
    *out |= ((*in) % (1U << 6)) << 8;
    ++in;
    *out |= ((*in) % (1U << 6)) << 14;
    ++in;
    *out |= ((*in) % (1U << 6)) << 20;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    ++in;
    *out = (*in) % (1U << 6);
    ++in;
    *out |= ((*in) % (1U << 6)) << 6;
    ++in;
    *out |= ((*in) % (1U << 6)) << 12;
    ++in;
    *out |= ((*in) % (1U << 6)) << 18;
    ++in;
    *out |= ((*in) % (1U << 6)) << 24;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 6)) >> (6 - 4);
    ++in;
    *out |= ((*in) % (1U << 6)) << 4;
    ++in;
    *out |= ((*in) % (1U << 6)) << 10;
    ++in;
    *out |= ((*in) % (1U << 6)) << 16;
    ++in;
    *out |= ((*in) % (1U << 6)) << 22;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 6)) >> (6 - 2);
    ++in;
    *out |= ((*in) % (1U << 6)) << 2;
    ++in;
    *out |= ((*in) % (1U << 6)) << 8;
    ++in;
    *out |= ((*in) % (1U << 6)) << 14;
    ++in;
    *out |= ((*in) % (1U << 6)) << 20;
    ++in;
    *out |= ((*in)) << 26;
}

void __fastpack7(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 7);
    ++in;
    *out |= ((*in) % (1U << 7)) << 7;
    ++in;
    *out |= ((*in) % (1U << 7)) << 14;
    ++in;
    *out |= ((*in) % (1U << 7)) << 21;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 7)) >> (7 - 3);
    ++in;
    *out |= ((*in) % (1U << 7)) << 3;
    ++in;
    *out |= ((*in) % (1U << 7)) << 10;
    ++in;
    *out |= ((*in) % (1U << 7)) << 17;
    ++in;
    *out |= ((*in) % (1U << 7)) << 24;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 7)) >> (7 - 6);
    ++in;
    *out |= ((*in) % (1U << 7)) << 6;
    ++in;
    *out |= ((*in) % (1U << 7)) << 13;
    ++in;
    *out |= ((*in) % (1U << 7)) << 20;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 7)) >> (7 - 2);
    ++in;
    *out |= ((*in) % (1U << 7)) << 2;
    ++in;
    *out |= ((*in) % (1U << 7)) << 9;
    ++in;
    *out |= ((*in) % (1U << 7)) << 16;
    ++in;
    *out |= ((*in) % (1U << 7)) << 23;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 7)) >> (7 - 5);
    ++in;
    *out |= ((*in) % (1U << 7)) << 5;
    ++in;
    *out |= ((*in) % (1U << 7)) << 12;
    ++in;
    *out |= ((*in) % (1U << 7)) << 19;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 7)) >> (7 - 1);
    ++in;
    *out |= ((*in) % (1U << 7)) << 1;
    ++in;
    *out |= ((*in) % (1U << 7)) << 8;
    ++in;
    *out |= ((*in) % (1U << 7)) << 15;
    ++in;
    *out |= ((*in) % (1U << 7)) << 22;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 7)) >> (7 - 4);
    ++in;
    *out |= ((*in) % (1U << 7)) << 4;
    ++in;
    *out |= ((*in) % (1U << 7)) << 11;
    ++in;
    *out |= ((*in) % (1U << 7)) << 18;
    ++in;
    *out |= ((*in)) << 25;
}

void __fastpack8(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in) % (1U << 8);
    ++in;
    *out |= ((*in) % (1U << 8)) << 8;
    ++in;
    *out |= ((*in) % (1U << 8)) << 16;
    ++in;
    *out |= ((*in)) << 24;
}

void __fastpack9(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 9);
    ++in;
    *out |= ((*in) % (1U << 9)) << 9;
    ++in;
    *out |= ((*in) % (1U << 9)) << 18;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 4);
    ++in;
    *out |= ((*in) % (1U << 9)) << 4;
    ++in;
    *out |= ((*in) % (1U << 9)) << 13;
    ++in;
    *out |= ((*in) % (1U << 9)) << 22;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 8);
    ++in;
    *out |= ((*in) % (1U << 9)) << 8;
    ++in;
    *out |= ((*in) % (1U << 9)) << 17;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 3);
    ++in;
    *out |= ((*in) % (1U << 9)) << 3;
    ++in;
    *out |= ((*in) % (1U << 9)) << 12;
    ++in;
    *out |= ((*in) % (1U << 9)) << 21;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 7);
    ++in;
    *out |= ((*in) % (1U << 9)) << 7;
    ++in;
    *out |= ((*in) % (1U << 9)) << 16;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 2);
    ++in;
    *out |= ((*in) % (1U << 9)) << 2;
    ++in;
    *out |= ((*in) % (1U << 9)) << 11;
    ++in;
    *out |= ((*in) % (1U << 9)) << 20;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 6);
    ++in;
    *out |= ((*in) % (1U << 9)) << 6;
    ++in;
    *out |= ((*in) % (1U << 9)) << 15;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 1);
    ++in;
    *out |= ((*in) % (1U << 9)) << 1;
    ++in;
    *out |= ((*in) % (1U << 9)) << 10;
    ++in;
    *out |= ((*in) % (1U << 9)) << 19;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 9)) >> (9 - 5);
    ++in;
    *out |= ((*in) % (1U << 9)) << 5;
    ++in;
    *out |= ((*in) % (1U << 9)) << 14;
    ++in;
    *out |= ((*in)) << 23;
}

void __fastpack10(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 10);
    ++in;
    *out |= ((*in) % (1U << 10)) << 10;
    ++in;
    *out |= ((*in) % (1U << 10)) << 20;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 8);
    ++in;
    *out |= ((*in) % (1U << 10)) << 8;
    ++in;
    *out |= ((*in) % (1U << 10)) << 18;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 6);
    ++in;
    *out |= ((*in) % (1U << 10)) << 6;
    ++in;
    *out |= ((*in) % (1U << 10)) << 16;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 4);
    ++in;
    *out |= ((*in) % (1U << 10)) << 4;
    ++in;
    *out |= ((*in) % (1U << 10)) << 14;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 2);
    ++in;
    *out |= ((*in) % (1U << 10)) << 2;
    ++in;
    *out |= ((*in) % (1U << 10)) << 12;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    ++in;
    *out = (*in) % (1U << 10);
    ++in;
    *out |= ((*in) % (1U << 10)) << 10;
    ++in;
    *out |= ((*in) % (1U << 10)) << 20;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 8);
    ++in;
    *out |= ((*in) % (1U << 10)) << 8;
    ++in;
    *out |= ((*in) % (1U << 10)) << 18;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 6);
    ++in;
    *out |= ((*in) % (1U << 10)) << 6;
    ++in;
    *out |= ((*in) % (1U << 10)) << 16;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 4);
    ++in;
    *out |= ((*in) % (1U << 10)) << 4;
    ++in;
    *out |= ((*in) % (1U << 10)) << 14;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 10)) >> (10 - 2);
    ++in;
    *out |= ((*in) % (1U << 10)) << 2;
    ++in;
    *out |= ((*in) % (1U << 10)) << 12;
    ++in;
    *out |= ((*in)) << 22;
}

void __fastpack11(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 11);
    ++in;
    *out |= ((*in) % (1U << 11)) << 11;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 1);
    ++in;
    *out |= ((*in) % (1U << 11)) << 1;
    ++in;
    *out |= ((*in) % (1U << 11)) << 12;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 2);
    ++in;
    *out |= ((*in) % (1U << 11)) << 2;
    ++in;
    *out |= ((*in) % (1U << 11)) << 13;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 3);
    ++in;
    *out |= ((*in) % (1U << 11)) << 3;
    ++in;
    *out |= ((*in) % (1U << 11)) << 14;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 4);
    ++in;
    *out |= ((*in) % (1U << 11)) << 4;
    ++in;
    *out |= ((*in) % (1U << 11)) << 15;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 5);
    ++in;
    *out |= ((*in) % (1U << 11)) << 5;
    ++in;
    *out |= ((*in) % (1U << 11)) << 16;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 6);
    ++in;
    *out |= ((*in) % (1U << 11)) << 6;
    ++in;
    *out |= ((*in) % (1U << 11)) << 17;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 7);
    ++in;
    *out |= ((*in) % (1U << 11)) << 7;
    ++in;
    *out |= ((*in) % (1U << 11)) << 18;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 8);
    ++in;
    *out |= ((*in) % (1U << 11)) << 8;
    ++in;
    *out |= ((*in) % (1U << 11)) << 19;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 9);
    ++in;
    *out |= ((*in) % (1U << 11)) << 9;
    ++in;
    *out |= ((*in) % (1U << 11)) << 20;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 11)) >> (11 - 10);
    ++in;
    *out |= ((*in) % (1U << 11)) << 10;
    ++in;
    *out |= ((*in)) << 21;
}

void __fastpack12(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 12);
    ++in;
    *out |= ((*in) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    ++in;
    *out = (*in) % (1U << 12);
    ++in;
    *out |= ((*in) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    ++in;
    *out = (*in) % (1U << 12);
    ++in;
    *out |= ((*in) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    ++in;
    *out = (*in) % (1U << 12);
    ++in;
    *out |= ((*in) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in)) << 20;
}

void __fastpack13(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 13);
    ++in;
    *out |= ((*in) % (1U << 13)) << 13;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 7);
    ++in;
    *out |= ((*in) % (1U << 13)) << 7;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 1);
    ++in;
    *out |= ((*in) % (1U << 13)) << 1;
    ++in;
    *out |= ((*in) % (1U << 13)) << 14;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 8);
    ++in;
    *out |= ((*in) % (1U << 13)) << 8;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 2);
    ++in;
    *out |= ((*in) % (1U << 13)) << 2;
    ++in;
    *out |= ((*in) % (1U << 13)) << 15;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 9);
    ++in;
    *out |= ((*in) % (1U << 13)) << 9;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 3);
    ++in;
    *out |= ((*in) % (1U << 13)) << 3;
    ++in;
    *out |= ((*in) % (1U << 13)) << 16;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 10);
    ++in;
    *out |= ((*in) % (1U << 13)) << 10;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 4);
    ++in;
    *out |= ((*in) % (1U << 13)) << 4;
    ++in;
    *out |= ((*in) % (1U << 13)) << 17;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 11);
    ++in;
    *out |= ((*in) % (1U << 13)) << 11;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 5);
    ++in;
    *out |= ((*in) % (1U << 13)) << 5;
    ++in;
    *out |= ((*in) % (1U << 13)) << 18;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 12);
    ++in;
    *out |= ((*in) % (1U << 13)) << 12;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 13)) >> (13 - 6);
    ++in;
    *out |= ((*in) % (1U << 13)) << 6;
    ++in;
    *out |= ((*in)) << 19;
}

void __fastpack14(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 14);
    ++in;
    *out |= ((*in) % (1U << 14)) << 14;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 10);
    ++in;
    *out |= ((*in) % (1U << 14)) << 10;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 6);
    ++in;
    *out |= ((*in) % (1U << 14)) << 6;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 2);
    ++in;
    *out |= ((*in) % (1U << 14)) << 2;
    ++in;
    *out |= ((*in) % (1U << 14)) << 16;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 12);
    ++in;
    *out |= ((*in) % (1U << 14)) << 12;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 8);
    ++in;
    *out |= ((*in) % (1U << 14)) << 8;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 4);
    ++in;
    *out |= ((*in) % (1U << 14)) << 4;
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    ++in;
    *out = (*in) % (1U << 14);
    ++in;
    *out |= ((*in) % (1U << 14)) << 14;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 10);
    ++in;
    *out |= ((*in) % (1U << 14)) << 10;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 6);
    ++in;
    *out |= ((*in) % (1U << 14)) << 6;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 2);
    ++in;
    *out |= ((*in) % (1U << 14)) << 2;
    ++in;
    *out |= ((*in) % (1U << 14)) << 16;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 12);
    ++in;
    *out |= ((*in) % (1U << 14)) << 12;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 8);
    ++in;
    *out |= ((*in) % (1U << 14)) << 8;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 14)) >> (14 - 4);
    ++in;
    *out |= ((*in) % (1U << 14)) << 4;
    ++in;
    *out |= ((*in)) << 18;
}

void __fastpack15(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 15);
    ++in;
    *out |= ((*in) % (1U << 15)) << 15;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 13);
    ++in;
    *out |= ((*in) % (1U << 15)) << 13;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 11);
    ++in;
    *out |= ((*in) % (1U << 15)) << 11;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 9);
    ++in;
    *out |= ((*in) % (1U << 15)) << 9;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 7);
    ++in;
    *out |= ((*in) % (1U << 15)) << 7;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 5);
    ++in;
    *out |= ((*in) % (1U << 15)) << 5;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 3);
    ++in;
    *out |= ((*in) % (1U << 15)) << 3;
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 1);
    ++in;
    *out |= ((*in) % (1U << 15)) << 1;
    ++in;
    *out |= ((*in) % (1U << 15)) << 16;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 14);
    ++in;
    *out |= ((*in) % (1U << 15)) << 14;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 12);
    ++in;
    *out |= ((*in) % (1U << 15)) << 12;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 10);
    ++in;
    *out |= ((*in) % (1U << 15)) << 10;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 8);
    ++in;
    *out |= ((*in) % (1U << 15)) << 8;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 6);
    ++in;
    *out |= ((*in) % (1U << 15)) << 6;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 4);
    ++in;
    *out |= ((*in) % (1U << 15)) << 4;
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 15)) >> (15 - 2);
    ++in;
    *out |= ((*in) % (1U << 15)) << 2;
    ++in;
    *out |= ((*in)) << 17;
}

void __fastpack16(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in) % (1U << 16);
    ++in;
    *out |= ((*in)) << 16;
}

void __fastpack17(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 2);
    ++in;
    *out |= ((*in) % (1U << 17)) << 2;
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 4);
    ++in;
    *out |= ((*in) % (1U << 17)) << 4;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 6);
    ++in;
    *out |= ((*in) % (1U << 17)) << 6;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 8);
    ++in;
    *out |= ((*in) % (1U << 17)) << 8;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 10);
    ++in;
    *out |= ((*in) % (1U << 17)) << 10;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 12);
    ++in;
    *out |= ((*in) % (1U << 17)) << 12;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 14);
    ++in;
    *out |= ((*in) % (1U << 17)) << 14;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 1);
    ++in;
    *out |= ((*in) % (1U << 17)) << 1;
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 3);
    ++in;
    *out |= ((*in) % (1U << 17)) << 3;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 5);
    ++in;
    *out |= ((*in) % (1U << 17)) << 5;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 7);
    ++in;
    *out |= ((*in) % (1U << 17)) << 7;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 9);
    ++in;
    *out |= ((*in) % (1U << 17)) << 9;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 11);
    ++in;
    *out |= ((*in) % (1U << 17)) << 11;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 13);
    ++in;
    *out |= ((*in) % (1U << 17)) << 13;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 17)) >> (17 - 15);
    ++in;
    *out |= ((*in)) << 15;
}

void __fastpack18(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 4);
    ++in;
    *out |= ((*in) % (1U << 18)) << 4;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 8);
    ++in;
    *out |= ((*in) % (1U << 18)) << 8;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 12);
    ++in;
    *out |= ((*in) % (1U << 18)) << 12;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 2);
    ++in;
    *out |= ((*in) % (1U << 18)) << 2;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 6);
    ++in;
    *out |= ((*in) % (1U << 18)) << 6;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 10);
    ++in;
    *out |= ((*in) % (1U << 18)) << 10;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    ++in;
    *out = (*in) % (1U << 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 4);
    ++in;
    *out |= ((*in) % (1U << 18)) << 4;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 8);
    ++in;
    *out |= ((*in) % (1U << 18)) << 8;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 12);
    ++in;
    *out |= ((*in) % (1U << 18)) << 12;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 2);
    ++in;
    *out |= ((*in) % (1U << 18)) << 2;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 6);
    ++in;
    *out |= ((*in) % (1U << 18)) << 6;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 10);
    ++in;
    *out |= ((*in) % (1U << 18)) << 10;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 18)) >> (18 - 14);
    ++in;
    *out |= ((*in)) << 14;
}

void __fastpack19(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 6);
    ++in;
    *out |= ((*in) % (1U << 19)) << 6;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 12);
    ++in;
    *out |= ((*in) % (1U << 19)) << 12;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 5);
    ++in;
    *out |= ((*in) % (1U << 19)) << 5;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 11);
    ++in;
    *out |= ((*in) % (1U << 19)) << 11;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 4);
    ++in;
    *out |= ((*in) % (1U << 19)) << 4;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 10);
    ++in;
    *out |= ((*in) % (1U << 19)) << 10;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 3);
    ++in;
    *out |= ((*in) % (1U << 19)) << 3;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 9);
    ++in;
    *out |= ((*in) % (1U << 19)) << 9;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 2);
    ++in;
    *out |= ((*in) % (1U << 19)) << 2;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 8);
    ++in;
    *out |= ((*in) % (1U << 19)) << 8;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 1);
    ++in;
    *out |= ((*in) % (1U << 19)) << 1;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 7);
    ++in;
    *out |= ((*in) % (1U << 19)) << 7;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 19)) >> (19 - 13);
    ++in;
    *out |= ((*in)) << 13;
}

void __fastpack20(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    ++in;
    *out = (*in) % (1U << 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    ++in;
    *out = (*in) % (1U << 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    ++in;
    *out = (*in) % (1U << 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
}

void __fastpack21(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 10);
    ++in;
    *out |= ((*in) % (1U << 21)) << 10;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 9);
    ++in;
    *out |= ((*in) % (1U << 21)) << 9;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 8);
    ++in;
    *out |= ((*in) % (1U << 21)) << 8;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 7);
    ++in;
    *out |= ((*in) % (1U << 21)) << 7;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 6);
    ++in;
    *out |= ((*in) % (1U << 21)) << 6;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 5);
    ++in;
    *out |= ((*in) % (1U << 21)) << 5;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 4);
    ++in;
    *out |= ((*in) % (1U << 21)) << 4;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 3);
    ++in;
    *out |= ((*in) % (1U << 21)) << 3;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 2);
    ++in;
    *out |= ((*in) % (1U << 21)) << 2;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 1);
    ++in;
    *out |= ((*in) % (1U << 21)) << 1;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 21)) >> (21 - 11);
    ++in;
    *out |= ((*in)) << 11;
}

void __fastpack22(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 2);
    ++in;
    *out |= ((*in) % (1U << 22)) << 2;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 4);
    ++in;
    *out |= ((*in) % (1U << 22)) << 4;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 6);
    ++in;
    *out |= ((*in) % (1U << 22)) << 6;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 8);
    ++in;
    *out |= ((*in) % (1U << 22)) << 8;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    ++in;
    *out = (*in) % (1U << 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 2);
    ++in;
    *out |= ((*in) % (1U << 22)) << 2;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 4);
    ++in;
    *out |= ((*in) % (1U << 22)) << 4;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 6);
    ++in;
    *out |= ((*in) % (1U << 22)) << 6;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 8);
    ++in;
    *out |= ((*in) % (1U << 22)) << 8;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 22)) >> (22 - 10);
    ++in;
    *out |= ((*in)) << 10;
}

void __fastpack23(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 5);
    ++in;
    *out |= ((*in) % (1U << 23)) << 5;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 1);
    ++in;
    *out |= ((*in) % (1U << 23)) << 1;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 6);
    ++in;
    *out |= ((*in) % (1U << 23)) << 6;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 2);
    ++in;
    *out |= ((*in) % (1U << 23)) << 2;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 7);
    ++in;
    *out |= ((*in) % (1U << 23)) << 7;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 3);
    ++in;
    *out |= ((*in) % (1U << 23)) << 3;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 8);
    ++in;
    *out |= ((*in) % (1U << 23)) << 8;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 4);
    ++in;
    *out |= ((*in) % (1U << 23)) << 4;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 23)) >> (23 - 9);
    ++in;
    *out |= ((*in)) << 9;
}

void __fastpack24(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in) % (1U << 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
}

void __fastpack25(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 4);
    ++in;
    *out |= ((*in) % (1U << 25)) << 4;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 1);
    ++in;
    *out |= ((*in) % (1U << 25)) << 1;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 5);
    ++in;
    *out |= ((*in) % (1U << 25)) << 5;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 2);
    ++in;
    *out |= ((*in) % (1U << 25)) << 2;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 6);
    ++in;
    *out |= ((*in) % (1U << 25)) << 6;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 3);
    ++in;
    *out |= ((*in) % (1U << 25)) << 3;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 25)) >> (25 - 7);
    ++in;
    *out |= ((*in)) << 7;
}

void __fastpack26(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 2);
    ++in;
    *out |= ((*in) % (1U << 26)) << 2;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 4);
    ++in;
    *out |= ((*in) % (1U << 26)) << 4;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    ++in;
    *out = (*in) % (1U << 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 2);
    ++in;
    *out |= ((*in) % (1U << 26)) << 2;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 4);
    ++in;
    *out |= ((*in) % (1U << 26)) << 4;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 26)) >> (26 - 6);
    ++in;
    *out |= ((*in)) << 6;
}

void __fastpack27(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 27);
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 2);
    ++in;
    *out |= ((*in) % (1U << 27)) << 2;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 4);
    ++in;
    *out |= ((*in) % (1U << 27)) << 4;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 1);
    ++in;
    *out |= ((*in) % (1U << 27)) << 1;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 3);
    ++in;
    *out |= ((*in) % (1U << 27)) << 3;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 27)) >> (27 - 5);
    ++in;
    *out |= ((*in)) << 5;
}

void __fastpack28(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    ++in;
    *out = (*in) % (1U << 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    ++in;
    *out = (*in) % (1U << 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    ++in;
    *out = (*in) % (1U << 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
}

void __fastpack29(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 29);
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 2);
    ++in;
    *out |= ((*in) % (1U << 29)) << 2;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 1);
    ++in;
    *out |= ((*in) % (1U << 29)) << 1;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 27);
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in) % (1U << 29)) >> (29 - 3);
    ++in;
    *out |= ((*in)) << 3;
}

void __fastpack30(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 30);
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++out;
    ++in;
    *out = (*in) % (1U << 30);
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in) % (1U << 30)) >> (30 - 2);
    ++in;
    *out |= ((*in)) << 2;
}

void __fastpack31(const uint32_t * in, uint32_t * out) {
    *out = (*in) % (1U << 31);
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 30);
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 29);
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 27);
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++out;
    *out = ((*in) % (1U << 31)) >> (31 - 1);
    ++in;
    *out |= ((*in)) << 1;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask1(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 19;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 21;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 23;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 25;
    ++in;
    *out |= ((*in)) << 26;
    ++in;
    *out |= ((*in)) << 27;
    ++in;
    *out |= ((*in)) << 28;
    ++in;
    *out |= ((*in)) << 29;
    ++in;
    *out |= ((*in)) << 30;
    ++in;
    *out |= ((*in)) << 31;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask2(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 26;
    ++in;
    *out |= ((*in)) << 28;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 26;
    ++in;
    *out |= ((*in)) << 28;
    ++in;
    *out |= ((*in)) << 30;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask3(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 21;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 27;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (3 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 19;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 25;
    ++in;
    *out |= ((*in)) << 28;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (3 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 23;
    ++in;
    *out |= ((*in)) << 26;
    ++in;
    *out |= ((*in)) << 29;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask4(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 28;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask5(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 25;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (5 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 23;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (5 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 21;
    ++in;
    *out |= ((*in)) << 26;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (5 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 19;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (5 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 27;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask6(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (6 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (6 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (6 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (6 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 26;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask7(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 21;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (7 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 24;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (7 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (7 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 23;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (7 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 19;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (7 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (7 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 25;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask8(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 24;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask9(const uint32_t * in,
                            uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (9 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 22;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (9 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (9 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 21;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (9 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (9 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (9 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (9 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 19;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (9 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 23;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask10(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (10 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (10 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (10 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (10 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (10 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (10 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (10 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (10 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 22;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask11(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (11 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (11 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (11 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (11 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (11 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (11 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (11 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (11 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 19;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (11 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 20;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (11 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 21;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask12(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (12 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (12 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (12 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (12 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (12 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (12 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (12 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (12 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 20;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask13(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (13 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (13 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (13 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (13 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (13 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (13 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (13 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (13 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 17;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (13 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (13 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 18;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (13 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (13 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 19;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask14(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (14 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (14 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (14 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (14 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (14 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (14 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (14 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (14 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (14 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (14 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (14 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (14 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 18;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask15(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 15;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (15 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (15 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (15 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (15 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (15 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (15 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (15 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 16;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (15 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (15 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (15 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (15 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (15 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (15 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (15 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 17;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask16(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 16;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask17(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (17 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (17 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (17 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (17 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (17 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (17 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (17 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (17 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (17 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (17 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (17 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (17 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (17 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (17 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (17 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (17 - 15);
    ++in;
    *out |= ((*in)) << 15;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask18(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (18 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (18 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (18 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (18 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (18 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (18 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (18 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (18 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (18 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (18 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (18 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (18 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (18 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (18 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (18 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (18 - 14);
    ++in;
    *out |= ((*in)) << 14;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask19(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (19 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (19 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (19 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (19 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (19 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (19 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (19 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (19 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (19 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (19 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (19 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (19 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (19 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (19 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (19 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (19 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (19 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (19 - 13);
    ++in;
    *out |= ((*in)) << 13;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask20(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (20 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (20 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (20 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (20 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (20 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (20 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (20 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (20 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (20 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (20 - 12);
    ++in;
    *out |= ((*in)) << 12;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask21(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (21 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (21 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (21 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (21 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (21 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (21 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (21 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (21 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (21 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (21 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (21 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (21 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (21 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (21 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (21 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (21 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in)) >> (21 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (21 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (21 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (21 - 11);
    ++in;
    *out |= ((*in)) << 11;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask22(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (22 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (22 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (22 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (22 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (22 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (22 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (22 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (22 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (22 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (22 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (22 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (22 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (22 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (22 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (22 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (22 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (22 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (22 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (22 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (22 - 10);
    ++in;
    *out |= ((*in)) << 10;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask23(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (23 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (23 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (23 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (23 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (23 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (23 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (23 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (23 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (23 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in)) >> (23 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (23 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (23 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (23 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (23 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (23 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (23 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (23 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (23 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (23 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in)) >> (23 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (23 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (23 - 9);
    ++in;
    *out |= ((*in)) << 9;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask24(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (24 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (24 - 8);
    ++in;
    *out |= ((*in)) << 8;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask25(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (25 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (25 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in)) >> (25 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (25 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (25 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (25 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (25 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (25 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (25 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (25 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (25 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (25 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (25 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in)) >> (25 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (25 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (25 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in)) >> (25 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (25 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (25 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (25 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (25 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (25 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (25 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (25 - 7);
    ++in;
    *out |= ((*in)) << 7;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask26(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (26 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (26 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (26 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (26 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (26 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (26 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (26 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (26 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (26 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (26 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (26 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (26 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (26 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (26 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (26 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (26 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (26 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (26 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (26 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (26 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (26 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (26 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (26 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (26 - 6);
    ++in;
    *out |= ((*in)) << 6;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask27(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (27 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (27 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (27 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (27 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++out;
    *out = ((*in)) >> (27 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (27 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (27 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (27 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (27 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in)) >> (27 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (27 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (27 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (27 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (27 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in)) >> (27 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in)) >> (27 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (27 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (27 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (27 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in)) >> (27 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (27 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (27 - 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (27 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (27 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (27 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (27 - 5);
    ++in;
    *out |= ((*in)) << 5;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask28(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (28 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (28 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (28 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (28 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (28 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (28 - 4);
    ++in;
    *out |= ((*in)) << 4;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask29(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (29 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (29 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (29 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (29 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (29 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (29 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in)) >> (29 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (29 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++out;
    *out = ((*in)) >> (29 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (29 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (29 - 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (29 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (29 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (29 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (29 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in)) >> (29 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (29 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++out;
    *out = ((*in)) >> (29 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in)) >> (29 - 1);
    ++in;
    *out |= ((*in)) << 1;
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (29 - 27);
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (29 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (29 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (29 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (29 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (29 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (29 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in)) >> (29 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in)) >> (29 - 3);
    ++in;
    *out |= ((*in)) << 3;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask30(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (30 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (30 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (30 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (30 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (30 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (30 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (30 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (30 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (30 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (30 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (30 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (30 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in)) >> (30 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in)) >> (30 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++out;
    ++in;
    *out = (*in);
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (30 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (30 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (30 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (30 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (30 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (30 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (30 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (30 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (30 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (30 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (30 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (30 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in)) >> (30 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in)) >> (30 - 2);
    ++in;
    *out |= ((*in)) << 2;
}

/*assumes that integers fit in the prescribed number of bits */
void __fastpackwithoutmask31(const uint32_t * in,
                             uint32_t * out) {
    *out = (*in);
    ++in;
    *out |= ((*in)) << 31;
    ++out;
    *out = ((*in)) >> (31 - 30);
    ++in;
    *out |= ((*in)) << 30;
    ++out;
    *out = ((*in)) >> (31 - 29);
    ++in;
    *out |= ((*in)) << 29;
    ++out;
    *out = ((*in)) >> (31 - 28);
    ++in;
    *out |= ((*in)) << 28;
    ++out;
    *out = ((*in)) >> (31 - 27);
    ++in;
    *out |= ((*in)) << 27;
    ++out;
    *out = ((*in)) >> (31 - 26);
    ++in;
    *out |= ((*in)) << 26;
    ++out;
    *out = ((*in)) >> (31 - 25);
    ++in;
    *out |= ((*in)) << 25;
    ++out;
    *out = ((*in)) >> (31 - 24);
    ++in;
    *out |= ((*in)) << 24;
    ++out;
    *out = ((*in)) >> (31 - 23);
    ++in;
    *out |= ((*in)) << 23;
    ++out;
    *out = ((*in)) >> (31 - 22);
    ++in;
    *out |= ((*in)) << 22;
    ++out;
    *out = ((*in)) >> (31 - 21);
    ++in;
    *out |= ((*in)) << 21;
    ++out;
    *out = ((*in)) >> (31 - 20);
    ++in;
    *out |= ((*in)) << 20;
    ++out;
    *out = ((*in)) >> (31 - 19);
    ++in;
    *out |= ((*in)) << 19;
    ++out;
    *out = ((*in)) >> (31 - 18);
    ++in;
    *out |= ((*in)) << 18;
    ++out;
    *out = ((*in)) >> (31 - 17);
    ++in;
    *out |= ((*in)) << 17;
    ++out;
    *out = ((*in)) >> (31 - 16);
    ++in;
    *out |= ((*in)) << 16;
    ++out;
    *out = ((*in)) >> (31 - 15);
    ++in;
    *out |= ((*in)) << 15;
    ++out;
    *out = ((*in)) >> (31 - 14);
    ++in;
    *out |= ((*in)) << 14;
    ++out;
    *out = ((*in)) >> (31 - 13);
    ++in;
    *out |= ((*in)) << 13;
    ++out;
    *out = ((*in)) >> (31 - 12);
    ++in;
    *out |= ((*in)) << 12;
    ++out;
    *out = ((*in)) >> (31 - 11);
    ++in;
    *out |= ((*in)) << 11;
    ++out;
    *out = ((*in)) >> (31 - 10);
    ++in;
    *out |= ((*in)) << 10;
    ++out;
    *out = ((*in)) >> (31 - 9);
    ++in;
    *out |= ((*in)) << 9;
    ++out;
    *out = ((*in)) >> (31 - 8);
    ++in;
    *out |= ((*in)) << 8;
    ++out;
    *out = ((*in)) >> (31 - 7);
    ++in;
    *out |= ((*in)) << 7;
    ++out;
    *out = ((*in)) >> (31 - 6);
    ++in;
    *out |= ((*in)) << 6;
    ++out;
    *out = ((*in)) >> (31 - 5);
    ++in;
    *out |= ((*in)) << 5;
    ++out;
    *out = ((*in)) >> (31 - 4);
    ++in;
    *out |= ((*in)) << 4;
    ++out;
    *out = ((*in)) >> (31 - 3);
    ++in;
    *out |= ((*in)) << 3;
    ++out;
    *out = ((*in)) >> (31 - 2);
    ++in;
    *out |= ((*in)) << 2;
    ++out;
    *out = ((*in)) >> (31 - 1);
    ++in;
    *out |= ((*in)) << 1;
}

void fastunpack(const uint32_t * in, uint32_t * out,
                const uint32_t bit) {
    // Could have used function pointers instead of switch.
    // Switch calls do offer the compiler more opportunities for optimization in
    // theory. In this case, it makes no difference with a good compiler.
    switch (bit) {
    case 0:
        __fastunpack0(in, out);
        break;
    case 1:
        __fastunpack1(in, out);
        break;
    case 2:
        __fastunpack2(in, out);
        break;
    case 3:
        __fastunpack3(in, out);
        break;
    case 4:
        __fastunpack4(in, out);
        break;
    case 5:
        __fastunpack5(in, out);
        break;
    case 6:
        __fastunpack6(in, out);
        break;
    case 7:
        __fastunpack7(in, out);
        break;
    case 8:
        __fastunpack8(in, out);
        break;
    case 9:
        __fastunpack9(in, out);
        break;
    case 10:
        __fastunpack10(in, out);
        break;
    case 11:
        __fastunpack11(in, out);
        break;
    case 12:
        __fastunpack12(in, out);
        break;
    case 13:
        __fastunpack13(in, out);
        break;
    case 14:
        __fastunpack14(in, out);
        break;
    case 15:
        __fastunpack15(in, out);
        break;
    case 16:
        __fastunpack16(in, out);
        break;
    case 17:
        __fastunpack17(in, out);
        break;
    case 18:
        __fastunpack18(in, out);
        break;
    case 19:
        __fastunpack19(in, out);
        break;
    case 20:
        __fastunpack20(in, out);
        break;
    case 21:
        __fastunpack21(in, out);
        break;
    case 22:
        __fastunpack22(in, out);
        break;
    case 23:
        __fastunpack23(in, out);
        break;
    case 24:
        __fastunpack24(in, out);
        break;
    case 25:
        __fastunpack25(in, out);
        break;
    case 26:
        __fastunpack26(in, out);
        break;
    case 27:
        __fastunpack27(in, out);
        break;
    case 28:
        __fastunpack28(in, out);
        break;
    case 29:
        __fastunpack29(in, out);
        break;
    case 30:
        __fastunpack30(in, out);
        break;
    case 31:
        __fastunpack31(in, out);
        break;
    case 32:
        __fastunpack32(in, out);
        break;
    default:
        break;
    }
}

void fastpack(const uint32_t * in, uint32_t * out,
              const uint32_t bit) {
    // Could have used function pointers instead of switch.
    // Switch calls do offer the compiler more opportunities for optimization in
    // theory. In this case, it makes no difference with a good compiler.
    switch (bit) {
    case 0:
        __fastpack0(in, out);
        break;
    case 1:
        __fastpack1(in, out);
        break;
    case 2:
        __fastpack2(in, out);
        break;
    case 3:
        __fastpack3(in, out);
        break;
    case 4:
        __fastpack4(in, out);
        break;
    case 5:
        __fastpack5(in, out);
        break;
    case 6:
        __fastpack6(in, out);
        break;
    case 7:
        __fastpack7(in, out);
        break;
    case 8:
        __fastpack8(in, out);
        break;
    case 9:
        __fastpack9(in, out);
        break;
    case 10:
        __fastpack10(in, out);
        break;
    case 11:
        __fastpack11(in, out);
        break;
    case 12:
        __fastpack12(in, out);
        break;
    case 13:
        __fastpack13(in, out);
        break;
    case 14:
        __fastpack14(in, out);
        break;
    case 15:
        __fastpack15(in, out);
        break;
    case 16:
        __fastpack16(in, out);
        break;
    case 17:
        __fastpack17(in, out);
        break;
    case 18:
        __fastpack18(in, out);
        break;
    case 19:
        __fastpack19(in, out);
        break;
    case 20:
        __fastpack20(in, out);
        break;
    case 21:
        __fastpack21(in, out);
        break;
    case 22:
        __fastpack22(in, out);
        break;
    case 23:
        __fastpack23(in, out);
        break;
    case 24:
        __fastpack24(in, out);
        break;
    case 25:
        __fastpack25(in, out);
        break;
    case 26:
        __fastpack26(in, out);
        break;
    case 27:
        __fastpack27(in, out);
        break;
    case 28:
        __fastpack28(in, out);
        break;
    case 29:
        __fastpack29(in, out);
        break;
    case 30:
        __fastpack30(in, out);
        break;
    case 31:
        __fastpack31(in, out);
        break;
    case 32:
        __fastpack32(in, out);
        break;
    default:
        break;
    }
}

/*assumes that integers fit in the prescribed number of bits*/
void fastpackwithoutmask(const uint32_t * in,
                         uint32_t * out, const uint32_t bit) {
    // Could have used function pointers instead of switch.
    // Switch calls do offer the compiler more opportunities for optimization in
    // theory. In this case, it makes no difference with a good compiler.
    switch (bit) {
    case 0:
        __fastpackwithoutmask0(in, out);
        break;
    case 1:
        __fastpackwithoutmask1(in, out);
        break;
    case 2:
        __fastpackwithoutmask2(in, out);
        break;
    case 3:
        __fastpackwithoutmask3(in, out);
        break;
    case 4:
        __fastpackwithoutmask4(in, out);
        break;
    case 5:
        __fastpackwithoutmask5(in, out);
        break;
    case 6:
        __fastpackwithoutmask6(in, out);
        break;
    case 7:
        __fastpackwithoutmask7(in, out);
        break;
    case 8:
        __fastpackwithoutmask8(in, out);
        break;
    case 9:
        __fastpackwithoutmask9(in, out);
        break;
    case 10:
        __fastpackwithoutmask10(in, out);
        break;
    case 11:
        __fastpackwithoutmask11(in, out);
        break;
    case 12:
        __fastpackwithoutmask12(in, out);
        break;
    case 13:
        __fastpackwithoutmask13(in, out);
        break;
    case 14:
        __fastpackwithoutmask14(in, out);
        break;
    case 15:
        __fastpackwithoutmask15(in, out);
        break;
    case 16:
        __fastpackwithoutmask16(in, out);
        break;
    case 17:
        __fastpackwithoutmask17(in, out);
        break;
    case 18:
        __fastpackwithoutmask18(in, out);
        break;
    case 19:
        __fastpackwithoutmask19(in, out);
        break;
    case 20:
        __fastpackwithoutmask20(in, out);
        break;
    case 21:
        __fastpackwithoutmask21(in, out);
        break;
    case 22:
        __fastpackwithoutmask22(in, out);
        break;
    case 23:
        __fastpackwithoutmask23(in, out);
        break;
    case 24:
        __fastpackwithoutmask24(in, out);
        break;
    case 25:
        __fastpackwithoutmask25(in, out);
        break;
    case 26:
        __fastpackwithoutmask26(in, out);
        break;
    case 27:
        __fastpackwithoutmask27(in, out);
        break;
    case 28:
        __fastpackwithoutmask28(in, out);
        break;
    case 29:
        __fastpackwithoutmask29(in, out);
        break;
    case 30:
        __fastpackwithoutmask30(in, out);
        break;
    case 31:
        __fastpackwithoutmask31(in, out);
        break;
    case 32:
        __fastpackwithoutmask32(in, out);
        break;
    default:
        break;
    }
}

void __host__ __device__ __integratedfastunpack0(const uint32_t initoffset,
                             const uint32_t *__restrict__,
                             uint32_t *__restrict__ out) {
    for (uint32_t i = 0; i < 32; ++i)
        *(out++) = initoffset;
}

void __integratedfastpack0(const uint32_t, const uint32_t *,
                           uint32_t *) {}

void __device__ __host__ __integratedfastunpack32(const uint32_t, const uint32_t * in,
                              uint32_t * out) {
    for (int k = 0; k < 32; ++k)
        out[k] = in[k]; // no sense in wasting time with deltas
}

void __integratedfastpack32(const uint32_t, const uint32_t * in,
                            uint32_t * out) {
    for (int k = 0; k < 32; ++k)
        out[k] = in[k]; // no sense in wasting time with deltas
}

void __device__ __host__ __integratedfastunpack2(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in >> 0) % (1U << 2);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28) % (1U << 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack3(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in >> 0) % (1U << 3);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 1)) << (3 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 2)) << (3 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26) % (1U << 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack5(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in >> 0) % (1U << 5);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 3)) << (5 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 1)) << (5 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 4)) << (5 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 2)) << (5 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack6(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in >> 0) % (1U << 6);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 4)) << (6 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 2)) << (6 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 4)) << (6 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 2)) << (6 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack7(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in >> 0) % (1U << 7);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 3)) << (7 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 6)) << (7 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 2)) << (7 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 5)) << (7 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 1)) << (7 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 4)) << (7 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack9(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in >> 0) % (1U << 9);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 4)) << (9 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 8)) << (9 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 3)) << (9 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 7)) << (9 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 2)) << (9 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 6)) << (9 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 1)) << (9 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 5)) << (9 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack10(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 10);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 8)) << (10 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 6)) << (10 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 4)) << (10 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 2)) << (10 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 8)) << (10 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 6)) << (10 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 4)) << (10 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 2)) << (10 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack11(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 11);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 1)) << (11 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 2)) << (11 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 3)) << (11 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 4)) << (11 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 5)) << (11 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 6)) << (11 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 7)) << (11 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 8)) << (11 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 9)) << (11 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 10)) << (11 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack12(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 12);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 4)) << (12 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 8)) << (12 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 4)) << (12 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 8)) << (12 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 4)) << (12 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 8)) << (12 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 4)) << (12 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 8)) << (12 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack13(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 13);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 7)) << (13 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 1)) << (13 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 8)) << (13 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 2)) << (13 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 9)) << (13 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 3)) << (13 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 10)) << (13 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 4)) << (13 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 11)) << (13 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 5)) << (13 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 12)) << (13 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 6)) << (13 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack14(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 14);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 10)) << (14 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 6)) << (14 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 2)) << (14 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 12)) << (14 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 8)) << (14 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 4)) << (14 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 10)) << (14 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 6)) << (14 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 2)) << (14 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 12)) << (14 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 8)) << (14 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 4)) << (14 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack15(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 15);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 15) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 13)) << (15 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 11)) << (15 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 9)) << (15 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 7)) << (15 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 5)) << (15 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 3)) << (15 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 1)) << (15 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 14)) << (15 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 12)) << (15 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 10)) << (15 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 8)) << (15 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 6)) << (15 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 4)) << (15 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 2)) << (15 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack17(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 17);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 2)) << (17 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 4)) << (17 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 6)) << (17 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 8)) << (17 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 10)) << (17 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 12)) << (17 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 14)) << (17 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 16)) << (17 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 1)) << (17 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 3)) << (17 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 5)) << (17 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 7)) << (17 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 9)) << (17 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 11)) << (17 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 13)) << (17 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13) % (1U << 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 15)) << (17 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack18(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 18);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 4)) << (18 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 8)) << (18 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 12)) << (18 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 16)) << (18 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 2)) << (18 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 6)) << (18 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 10)) << (18 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 14)) << (18 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 4)) << (18 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 8)) << (18 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 12)) << (18 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 16)) << (18 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 2)) << (18 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 6)) << (18 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 10)) << (18 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 14)) << (18 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack19(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 19);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 6)) << (19 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 12)) << (19 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 18)) << (19 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 5)) << (19 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 11)) << (19 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 17)) << (19 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 4)) << (19 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 10)) << (19 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 16)) << (19 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 3)) << (19 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 9)) << (19 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 15)) << (19 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 2)) << (19 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 8)) << (19 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 14)) << (19 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 1)) << (19 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 7)) << (19 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 13)) << (19 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack20(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 20);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 8)) << (20 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 16)) << (20 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 4)) << (20 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 12)) << (20 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 8)) << (20 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 16)) << (20 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 4)) << (20 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 12)) << (20 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 8)) << (20 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 16)) << (20 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 4)) << (20 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 12)) << (20 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 8)) << (20 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 16)) << (20 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 4)) << (20 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 12)) << (20 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack21(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 21);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 10)) << (21 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 20)) << (21 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 9)) << (21 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 19)) << (21 - 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 8)) << (21 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 18)) << (21 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 7)) << (21 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 17)) << (21 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 6)) << (21 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 16)) << (21 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 5)) << (21 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 15)) << (21 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 4)) << (21 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 14)) << (21 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 3)) << (21 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 13)) << (21 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    ++in;
    *out |= (*in % (1U << 2)) << (21 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 12)) << (21 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 1)) << (21 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 11)) << (21 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack22(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 22);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 12)) << (22 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 2)) << (22 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 14)) << (22 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 4)) << (22 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 16)) << (22 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 6)) << (22 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 18)) << (22 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 8)) << (22 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 20)) << (22 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 10)) << (22 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 12)) << (22 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 2)) << (22 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 14)) << (22 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 4)) << (22 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 16)) << (22 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 6)) << (22 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 18)) << (22 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 8)) << (22 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 20)) << (22 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 10)) << (22 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack23(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 23);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 14)) << (23 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 5)) << (23 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 19)) << (23 - 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 10)) << (23 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 1)) << (23 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 15)) << (23 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 6)) << (23 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 20)) << (23 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 11)) << (23 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11);
    ++in;
    *out |= (*in % (1U << 2)) << (23 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 16)) << (23 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 7)) << (23 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 21)) << (23 - 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 12)) << (23 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 3)) << (23 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 17)) << (23 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 8)) << (23 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 22)) << (23 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 13)) << (23 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    ++in;
    *out |= (*in % (1U << 4)) << (23 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 18)) << (23 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 9)) << (23 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack24(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 24);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 16)) << (24 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 8)) << (24 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack25(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 25);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 18)) << (25 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 11)) << (25 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11);
    ++in;
    *out |= (*in % (1U << 4)) << (25 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 22)) << (25 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 15)) << (25 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 8)) << (25 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 1)) << (25 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 19)) << (25 - 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 12)) << (25 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 5)) << (25 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5) % (1U << 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 23)) << (25 - 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 16)) << (25 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 9)) << (25 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9);
    ++in;
    *out |= (*in % (1U << 2)) << (25 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 20)) << (25 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 13)) << (25 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    ++in;
    *out |= (*in % (1U << 6)) << (25 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6) % (1U << 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 24)) << (25 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 17)) << (25 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 10)) << (25 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 3)) << (25 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 21)) << (25 - 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 14)) << (25 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 7)) << (25 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack26(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 26);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 20)) << (26 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 14)) << (26 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 8)) << (26 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 2)) << (26 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 22)) << (26 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 16)) << (26 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 10)) << (26 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 4)) << (26 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 24)) << (26 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 18)) << (26 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 12)) << (26 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 6)) << (26 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 20)) << (26 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 14)) << (26 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 8)) << (26 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 2)) << (26 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 22)) << (26 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 16)) << (26 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 10)) << (26 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 4)) << (26 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 24)) << (26 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 18)) << (26 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 12)) << (26 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 6)) << (26 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack27(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 27);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 22)) << (27 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 17)) << (27 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 12)) << (27 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 7)) << (27 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7);
    ++in;
    *out |= (*in % (1U << 2)) << (27 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 27);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 24)) << (27 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 19)) << (27 - 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 14)) << (27 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 9)) << (27 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9);
    ++in;
    *out |= (*in % (1U << 4)) << (27 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4) % (1U << 27);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 26)) << (27 - 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 21)) << (27 - 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 16)) << (27 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 11)) << (27 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11);
    ++in;
    *out |= (*in % (1U << 6)) << (27 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    ++in;
    *out |= (*in % (1U << 1)) << (27 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 27);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 23)) << (27 - 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 18)) << (27 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 13)) << (27 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    ++in;
    *out |= (*in % (1U << 8)) << (27 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 3)) << (27 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3) % (1U << 27);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 25)) << (27 - 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 20)) << (27 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 15)) << (27 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 10)) << (27 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 5)) << (27 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack28(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 28);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 24)) << (28 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 20)) << (28 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 16)) << (28 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 12)) << (28 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 8)) << (28 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 4)) << (28 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 24)) << (28 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 20)) << (28 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 16)) << (28 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 12)) << (28 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 8)) << (28 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 4)) << (28 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 24)) << (28 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 20)) << (28 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 16)) << (28 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 12)) << (28 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 8)) << (28 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 4)) << (28 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 24)) << (28 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 20)) << (28 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 16)) << (28 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 12)) << (28 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 8)) << (28 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 4)) << (28 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack29(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 29);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 26)) << (29 - 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 23)) << (29 - 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 20)) << (29 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 17)) << (29 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 14)) << (29 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 11)) << (29 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11);
    ++in;
    *out |= (*in % (1U << 8)) << (29 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 5)) << (29 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5);
    ++in;
    *out |= (*in % (1U << 2)) << (29 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2) % (1U << 29);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 28)) << (29 - 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 25)) << (29 - 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 22)) << (29 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 19)) << (29 - 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 16)) << (29 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 13)) << (29 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    ++in;
    *out |= (*in % (1U << 10)) << (29 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 7)) << (29 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7);
    ++in;
    *out |= (*in % (1U << 4)) << (29 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out |= (*in % (1U << 1)) << (29 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1) % (1U << 29);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 27)) << (29 - 27);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 24)) << (29 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 21)) << (29 - 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 18)) << (29 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 15)) << (29 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 12)) << (29 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 9)) << (29 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9);
    ++in;
    *out |= (*in % (1U << 6)) << (29 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    ++in;
    *out |= (*in % (1U << 3)) << (29 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack30(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 30);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 28)) << (30 - 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 26)) << (30 - 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 24)) << (30 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 22)) << (30 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 20)) << (30 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 18)) << (30 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 16)) << (30 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 14)) << (30 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 12)) << (30 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 10)) << (30 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 8)) << (30 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 6)) << (30 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    ++in;
    *out |= (*in % (1U << 4)) << (30 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out |= (*in % (1U << 2)) << (30 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2);
    ++in;
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 0) % (1U << 30);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 28)) << (30 - 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 26)) << (30 - 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 24)) << (30 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 22)) << (30 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 20)) << (30 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 18)) << (30 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 16)) << (30 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 14)) << (30 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 12)) << (30 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 10)) << (30 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 8)) << (30 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 6)) << (30 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    ++in;
    *out |= (*in % (1U << 4)) << (30 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out |= (*in % (1U << 2)) << (30 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack31(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *out = (*in >> 0) % (1U << 31);
    *out += initoffset; // integrated delta decoding
    out++;
    *out = (*in >> 31);
    ++in;
    *out |= (*in % (1U << 30)) << (31 - 30);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 30);
    ++in;
    *out |= (*in % (1U << 29)) << (31 - 29);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 29);
    ++in;
    *out |= (*in % (1U << 28)) << (31 - 28);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 28);
    ++in;
    *out |= (*in % (1U << 27)) << (31 - 27);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 27);
    ++in;
    *out |= (*in % (1U << 26)) << (31 - 26);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 26);
    ++in;
    *out |= (*in % (1U << 25)) << (31 - 25);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 25);
    ++in;
    *out |= (*in % (1U << 24)) << (31 - 24);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 24);
    ++in;
    *out |= (*in % (1U << 23)) << (31 - 23);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 23);
    ++in;
    *out |= (*in % (1U << 22)) << (31 - 22);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 22);
    ++in;
    *out |= (*in % (1U << 21)) << (31 - 21);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 21);
    ++in;
    *out |= (*in % (1U << 20)) << (31 - 20);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 20);
    ++in;
    *out |= (*in % (1U << 19)) << (31 - 19);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 19);
    ++in;
    *out |= (*in % (1U << 18)) << (31 - 18);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 18);
    ++in;
    *out |= (*in % (1U << 17)) << (31 - 17);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 17);
    ++in;
    *out |= (*in % (1U << 16)) << (31 - 16);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 16);
    ++in;
    *out |= (*in % (1U << 15)) << (31 - 15);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 15);
    ++in;
    *out |= (*in % (1U << 14)) << (31 - 14);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 14);
    ++in;
    *out |= (*in % (1U << 13)) << (31 - 13);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 13);
    ++in;
    *out |= (*in % (1U << 12)) << (31 - 12);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 12);
    ++in;
    *out |= (*in % (1U << 11)) << (31 - 11);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 11);
    ++in;
    *out |= (*in % (1U << 10)) << (31 - 10);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 10);
    ++in;
    *out |= (*in % (1U << 9)) << (31 - 9);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 9);
    ++in;
    *out |= (*in % (1U << 8)) << (31 - 8);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 8);
    ++in;
    *out |= (*in % (1U << 7)) << (31 - 7);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 7);
    ++in;
    *out |= (*in % (1U << 6)) << (31 - 6);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 6);
    ++in;
    *out |= (*in % (1U << 5)) << (31 - 5);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 5);
    ++in;
    *out |= (*in % (1U << 4)) << (31 - 4);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 4);
    ++in;
    *out |= (*in % (1U << 3)) << (31 - 3);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 3);
    ++in;
    *out |= (*in % (1U << 2)) << (31 - 2);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 2);
    ++in;
    *out |= (*in % (1U << 1)) << (31 - 1);
    *out += out[-1]; // integrated delta decoding
    out++;
    *out = (*in >> 1);
    *out += out[-1]; // integrated delta decoding
}

void __device__ __host__ __integratedfastunpack1(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *out = (*in & 1) + initoffset;
    ++out;
    *out = ((*in >> 1) & 1) + out[-1];
    ++out;
    for (uint32_t i = 2; i < 32; i += 1) {
        *out = ((*in >> i) & 1) + out[-1];
        ++i;
        ++out;
        *out = ((*in >> i) & 1) + out[-1];
        ++out;
    }
}

void __device__ __host__ __integratedfastunpack4(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *(out++) = (*in % (1U << 4)) + initoffset;
    for (uint32_t i = 4; i < 32; i += 4) {
        *out = ((*in >> i) % (1U << 4)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 4) {
        *out = ((*in >> i) % (1U << 4)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 4) {
        *out = ((*in >> i) % (1U << 4)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 4) {
        *out = ((*in >> i) % (1U << 4)) + out[-1];
        ++out;
    }
}

void __device__ __host__ __integratedfastunpack8(const uint32_t initoffset,
                             const uint32_t * in,
                             uint32_t * out) {
    *(out++) = (*in % (1U << 8)) + initoffset;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 8) {
        *out = ((*in >> i) % (1U << 8)) + out[-1];
        ++out;
    }
}

void __device__ __host__ __integratedfastunpack16(const uint32_t initoffset,
                              const uint32_t * in,
                              uint32_t * out) {
    *(out++) = (*in % (1U << 16)) + initoffset;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
    ++in;
    for (uint32_t i = 0; i < 32; i += 16) {
        *out = ((*in >> i) % (1U << 16)) + out[-1];
        ++out;
    }
}

void __integratedfastpack2(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = (*in - initoffset) % (1U << 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 18;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 20;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 22;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 24;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 26;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 28;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 18;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 20;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 22;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 24;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 26;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 2)) << 28;
    ++in;
    *out |= ((*in - in[-1])) << 30;
}

void __integratedfastpack3(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = (*in - initoffset) % (1U << 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 3;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 9;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 15;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 18;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 21;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 24;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 27;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 3)) >> (3 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 7;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 13;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 19;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 22;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 25;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 28;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 3)) >> (3 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 5;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 11;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 17;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 20;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 23;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 3)) << 26;
    ++in;
    *out |= ((*in - in[-1])) << 29;
}

void __integratedfastpack5(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = (*in - initoffset) % (1U << 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 5;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 15;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 20;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 25;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 5)) >> (5 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 3;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 13;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 18;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 23;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 5)) >> (5 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 11;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 21;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 26;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 5)) >> (5 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 9;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 19;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 24;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 5)) >> (5 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 7;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 17;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 5)) << 22;
    ++in;
    *out |= ((*in - in[-1])) << 27;
}

void __integratedfastpack6(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = (*in - initoffset) % (1U << 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 18;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 24;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 6)) >> (6 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 22;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 6)) >> (6 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 18;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 24;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 6)) >> (6 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 22;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 6)) >> (6 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 6)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 26;
}

void __integratedfastpack7(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = (*in - initoffset) % (1U << 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 7;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 14;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 21;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 7)) >> (7 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 3;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 17;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 24;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 7)) >> (7 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 13;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 7)) >> (7 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 9;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 16;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 23;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 7)) >> (7 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 5;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 19;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 7)) >> (7 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 15;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 22;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 7)) >> (7 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 11;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 7)) << 18;
    ++in;
    *out |= ((*in - in[-1])) << 25;
}

void __integratedfastpack9(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = (*in - initoffset) % (1U << 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 9;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 18;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 13;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 22;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 17;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 3;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 12;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 21;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 7;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 11;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 15;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 19;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 9)) >> (9 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 5;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 9)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 23;
}

void __integratedfastpack10(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 18;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 10;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 18;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 10)) >> (10 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 10)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 22;
}

void __integratedfastpack11(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 11);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 11;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 13;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 3;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 15;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 5;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 6;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 17;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 7;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 18;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 8;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 19;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 9;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 20;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 11)) >> (11 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 11)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 21;
}

void __integratedfastpack12(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 12)) >> (12 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 12)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 20;
}

void __integratedfastpack13(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 13);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 13;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 7;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 15;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 9;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 3;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 4;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 17;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 11);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 11;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 5;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 18;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 13)) >> (13 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 13)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 19;
}

void __integratedfastpack14(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 14);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 14);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 2;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 14)) >> (14 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 14)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 18;
}

void __integratedfastpack15(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 15);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 15;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 13);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 13;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 11);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 11;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 9;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 7;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 5;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 1;
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 16;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 14);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 15)) >> (15 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 15)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 17;
}

void __integratedfastpack17(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 14);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 14;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 5;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 7;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 9;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 11);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 11;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 13);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 17)) << 13;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 17)) >> (17 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
}

void __integratedfastpack18(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 18)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 18)) >> (18 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
}

void __integratedfastpack19(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 12);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 12;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 5;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 11);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 11;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 9;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 19)) << 7;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 19)) >> (19 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
}

void __integratedfastpack20(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 20)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 20)) >> (20 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
}

void __integratedfastpack21(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 21);
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 10);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 10;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 9);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 9;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 7;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 5;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 21)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 21)) >> (21 - 11);
    ++in;
    *out |= ((*in - in[-1])) << 11;
}

void __integratedfastpack22(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 22)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 22)) >> (22 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
}

void __integratedfastpack23(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 23);
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 5;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 11);
    ++in;
    *out |= ((*in - in[-1])) << 11;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 7);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 7;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 21);
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 8);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 8;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 23)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 23)) >> (23 - 9);
    ++in;
    *out |= ((*in - in[-1])) << 9;
}

void __integratedfastpack24(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 24)) >> (24 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
}

void __integratedfastpack25(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 25);
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 11);
    ++in;
    *out |= ((*in - in[-1])) << 11;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 25)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 25)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 5);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 25)) << 5;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 23);
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 9);
    ++in;
    *out |= ((*in - in[-1])) << 9;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 25)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 6);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 25)) << 6;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 25)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 21);
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 25)) >> (25 - 7);
    ++in;
    *out |= ((*in - in[-1])) << 7;
}

void __integratedfastpack26(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 26)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 26)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 26)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 26)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 26)) >> (26 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
}

void __integratedfastpack27(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 27);
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 7);
    ++in;
    *out |= ((*in - in[-1])) << 7;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 27)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 9);
    ++in;
    *out |= ((*in - in[-1])) << 9;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 4);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 27)) << 4;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 21);
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 11);
    ++in;
    *out |= ((*in - in[-1])) << 11;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 27)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 23);
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 3);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 27)) << 3;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 25);
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 27)) >> (27 - 5);
    ++in;
    *out |= ((*in - in[-1])) << 5;
}

void __integratedfastpack28(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 28)) >> (28 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
}

void __integratedfastpack29(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 29);
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 23);
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 11);
    ++in;
    *out |= ((*in - in[-1])) << 11;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 5);
    ++in;
    *out |= ((*in - in[-1])) << 5;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 2);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 29)) << 2;
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 25);
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 7);
    ++in;
    *out |= ((*in - in[-1])) << 7;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 1);
    ++in;
    *out |= ((*in - in[-1]) % (1U << 29)) << 1;
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 27);
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 21);
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 9);
    ++in;
    *out |= ((*in - in[-1])) << 9;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
    ++out;
    *out = ((*in - in[-1]) % (1U << 29)) >> (29 - 3);
    ++in;
    *out |= ((*in - in[-1])) << 3;
}

void __integratedfastpack30(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 30);
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 2);
    ++in;
    *out |= ((*in - in[-1])) << 2;
    ++out;
    ++in;
    *out = (*in - in[-1]) % (1U << 30);
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    *out = ((*in - in[-1]) % (1U << 30)) >> (30 - 2);
    ++in;
    *out |= ((*in - in[-1])) << 2;
}

void __integratedfastpack31(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = (*in - initoffset) % (1U << 31);
    ++in;
    *out |= ((*in - in[-1])) << 31;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 30);
    ++in;
    *out |= ((*in - in[-1])) << 30;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 29);
    ++in;
    *out |= ((*in - in[-1])) << 29;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 28);
    ++in;
    *out |= ((*in - in[-1])) << 28;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 27);
    ++in;
    *out |= ((*in - in[-1])) << 27;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 26);
    ++in;
    *out |= ((*in - in[-1])) << 26;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 25);
    ++in;
    *out |= ((*in - in[-1])) << 25;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 24);
    ++in;
    *out |= ((*in - in[-1])) << 24;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 23);
    ++in;
    *out |= ((*in - in[-1])) << 23;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 22);
    ++in;
    *out |= ((*in - in[-1])) << 22;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 21);
    ++in;
    *out |= ((*in - in[-1])) << 21;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 20);
    ++in;
    *out |= ((*in - in[-1])) << 20;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 19);
    ++in;
    *out |= ((*in - in[-1])) << 19;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 18);
    ++in;
    *out |= ((*in - in[-1])) << 18;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 17);
    ++in;
    *out |= ((*in - in[-1])) << 17;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 16);
    ++in;
    *out |= ((*in - in[-1])) << 16;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 15);
    ++in;
    *out |= ((*in - in[-1])) << 15;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 14);
    ++in;
    *out |= ((*in - in[-1])) << 14;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 13);
    ++in;
    *out |= ((*in - in[-1])) << 13;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 12);
    ++in;
    *out |= ((*in - in[-1])) << 12;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 11);
    ++in;
    *out |= ((*in - in[-1])) << 11;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 10);
    ++in;
    *out |= ((*in - in[-1])) << 10;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 9);
    ++in;
    *out |= ((*in - in[-1])) << 9;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 8);
    ++in;
    *out |= ((*in - in[-1])) << 8;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 7);
    ++in;
    *out |= ((*in - in[-1])) << 7;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 6);
    ++in;
    *out |= ((*in - in[-1])) << 6;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 5);
    ++in;
    *out |= ((*in - in[-1])) << 5;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 4);
    ++in;
    *out |= ((*in - in[-1])) << 4;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 3);
    ++in;
    *out |= ((*in - in[-1])) << 3;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 2);
    ++in;
    *out |= ((*in - in[-1])) << 2;
    ++out;
    *out = ((*in - in[-1]) % (1U << 31)) >> (31 - 1);
    ++in;
    *out |= ((*in - in[-1])) << 1;
}

/*assumes that integers fit in the prescribed number of bits*/
void __integratedfastpack1(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = *(in++) - initoffset;
    for (uint32_t i = 1; i < 32; i += 1) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
}

/*assumes that integers fit in the prescribed number of bits*/
void __integratedfastpack4(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = *(in++) - initoffset;
    for (uint32_t i = 4; i < 32; i += 4) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 4; i < 32; i += 4) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 4; i < 32; i += 4) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 4; i < 32; i += 4) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
}

/*assumes that integers fit in the prescribed number of bits*/
void __integratedfastpack8(const uint32_t initoffset,
                           const uint32_t * in,
                           uint32_t * out) {
    *out = *(in++) - initoffset;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 8; i < 32; i += 8) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
}

/*assumes that integers fit in the prescribed number of bits*/
void __integratedfastpack16(const uint32_t initoffset,
                            const uint32_t * in,
                            uint32_t * out) {
    *out = *(in++) - initoffset;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
    *out = *in - in[-1];
    ++in;
    for (uint32_t i = 16; i < 32; i += 16) {
        *out |= (*in - in[-1]) << i;
        ++in;
    }
    ++out;
}


} // namespace compression
} // namespace genie

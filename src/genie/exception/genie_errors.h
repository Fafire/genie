/*! \file genie_errors.h
 *  \brief All the exceptions
 *
 */

#ifndef GENIE_ERRORS_H_
#define GENIE_ERRORS_H_

#include <stdexcept>
#include <stdio.h>
#include <genie/utility/Logger.h>

/*! \fn cudaCheckErrors( err )
 *  \brief The wrapper function to validate CUDA calls.
 *
 *  Please wrap all CUDA calls with this function.
 *
 *  Once a CUDA error is detected, a genie::exception::gpu_runtime_error will be
 *  thrown and the error will be logged.
 *
 *	\param err The CUDA error.
 */
#define cudaCheckErrors( err ) __cudaSafeCall( err, __FILE__, __LINE__ )
#define CUDA_CHECK_ERROR( err ) __cudaSafeCall( err, __FILE__, __LINE__ )


/*! \fn cudaCheckErrors( err )
 *  \brief Check for existing cuda errors
 *
 *  Once a CUDA error is detected, a genie::exception::gpu_runtime_error will be
 *  thrown and the error will be logged.
 */
#define CUDA_LAST_ERROR() __cudaGetLastError (__FILE__, __LINE__)

namespace genie {
namespace exception {

/*! \class genie_error
 *  \brief The base class for genie error exceptions
 *
 *  The genie error exception class is inherited from std::runtime_error.
 */
class genie_error : public std::runtime_error
{
public:
	/*! \fn genie_error(const char * msg)
	 *  \brief The constructor for genie_error.
	 *	\param msg The error message.
	 */
	genie_error(const char * msg);
};

/*! \class gpu_bad_alloc
 *  \brief The error class for memory exceptions occurred on GPU.
 *
 *  The gpu_bad_alloc error class is inherited from genie::exception::genie_error.
 *  All memory exceptions on GPU will be casted to gpu_bad_alloc and
 *  the error message will be kept.
 *
 *  \ref genie::exception::genie_error
 */
class gpu_bad_alloc : public genie_error
{
public:
	/*! \fn gpu_bad_alloc(const char * msg)
	 *  \brief The constructor for gpu_bad_alloc.
	 *	\param msg The error message.
	 */
	gpu_bad_alloc(const char * msg):genie_error(msg){}

};

/*! \class gpu_runtime_error
 *  \brief The error class for runtime exceptions occurred on GPU.
 *
 *  The gpu_runtime_error error class is inherited from genie::exception::genie_error.
 *  All runtime exceptions on GPU will be casted to gpu_runtime_error and
 *  the error message will be kept.
 *
 *  \ref genie::exception::genie_error
 */
class gpu_runtime_error : public genie_error
{
public:
	/*! \fn gpu_runtime_error(const char * msg)
	 *  \brief The constructor for gpu_runtime_error.
	 *	\param msg The error message.
	 */
	gpu_runtime_error(const char * msg):genie_error(msg){}

};

/*! \class cpu_bad_alloc
 *  \brief The error class for memory exceptions occurred on CPU.
 *
 *  The cpu_bad_alloc error class is inherited from genie::exception::genie_error.
 *  All memory exceptions on CPU will be casted to cpu_bad_alloc and
 *  the error message will be kept.
 *
 *  \ref genie::exception::genie_error
 */
class cpu_bad_alloc : public genie_error
{
public:
	/*! \fn cpu_bad_alloc(const char * msg)
	 *  \brief The constructor for cpu_bad_alloc.
	 *	\param msg The error message.
	 */
	cpu_bad_alloc(const char * msg):genie_error(msg){}

};

/*! \class cpu_runtime_error
 *  \brief The error class for runtime exceptions occurred on CPU.
 *
 *  The cpu_runtime_error error class is inherited from genie::exception::genie_error.
 *  All runtime exceptions on CPU will be casted to cpu_runtime_error and
 *  the error message will be kept.
 *
 *  \ref genie::exception::genie_error
 */
class cpu_runtime_error : public genie_error
{
public:
	/*! \fn cpu_runtime_error(const char * msg)
	 *  \brief The constructor for cpu_runtime_error.
	 *	\param msg The error message.
	 */
	cpu_runtime_error(const char * msg):genie_error(msg){}

};

} // namespace exception
} // namespace genie


/*! \fn inline void __cudaSafeCall(cudaError err, const char *file, const int line)
 *  \brief The hidden wrapper function to validate CUDA calls.
 *
 *  This function should not be called directly. It is wrapped in a
 *  macro expansion cudaCheckErrors( err ) .
 *  Please wrap all CUDA calls with cudaCheckErrors.
 *
 *  Once cuda errors are detected, a genie::exception::gpu_runtime_error will be
 *  thrown and the errors will be logged.
 *
 *	\param err The CUDA error.
 *	\param file The source code file name.
 *	\param line The line number that indicates the source of the error.
 */
inline void __cudaSafeCall(cudaError err, const char *file, const int line)
{

	if (cudaSuccess != err)
	{
		char errstr[1000];
		snprintf(errstr, 1000, "cudaSafeCall() failed at %s:%i : %s", file, line, cudaGetErrorString(err));
		genie::utility::Logger::log(genie::utility::Logger::ALERT, "%s", errstr);
		throw(genie::exception::gpu_runtime_error(errstr));
	}

	return;
}


inline void __cudaGetLastError(const char *file, const int line)
{
    cudaError_t err = cudaGetLastError();

    if (cudaSuccess != err)
    {
    	char errstr[1000];
        snprintf(errstr, 1000, "cudaGetLastError() failed at %s:%i : ERR %d - %s.\n",
        	file, line, (int)err, cudaGetErrorString(err));
        genie::utility::Logger::log(genie::utility::Logger::ALERT, "%s", errstr);
		throw(genie::exception::gpu_runtime_error(errstr));
    }
}

#endif


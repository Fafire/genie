/*
 * Logger.h
 *
 *  Created on: Jan 4, 2016
 *      Author: luanwenhao
 */

#ifndef LOGGER_H_
#define LOGGER_H_

#define LOGGER_MAX_FILE_NAME_SIZE 256

#include <stdio.h>

class Logger
{
public:
	static const int NONE = 0;
	static const int INFO = 1;
	static const int VERBOSE = 2;
	static const int DEBUG = 3;

	virtual ~Logger();
	static void exit(void);

	static int log(int level, const char *fmt, ...);

	static void set_level(int level);
	static int get_level();

	static void set_logfile_name(const char *);
	static const char * get_logfile_name();

private:
	static Logger * logger;
	int log_level;
	static const char * default_name;
	char logfile_name[LOGGER_MAX_FILE_NAME_SIZE];
	FILE * logfile;

	Logger(int level);
	static Logger* _logger(void);
};

#endif /* LOGGER_H_ */

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := iperf2.0.9
#LOCAL_MODULE_TAGS := dev
LOCAL_CFLAGS := -DHAVE_CONFIG_H -w -Wno-error=format-security -Wno-unused-parameter -Wno-macro-redefined -Wno-format
LOCAL_LDFLAGS := -fPIE -pie
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_SRC_FILES := \
		compat/Thread.c \
		compat/inet_ntop.c \
		compat/delay.c \
		compat/signal.c \
		compat/gettimeofday.c \
		compat/string.c \
		compat/snprintf.c \
		compat/inet_pton.c \
		compat/error.c \
		src/service.c \
		src/Reporter.c \
		src/tcp_window_size.c \
		src/Launch.cpp \
		src/Listener.cpp \
		src/gnu_getopt.c \
		src/ReportDefault.c \
		src/SocketAddr.c \
		src/Server.cpp \
		src/sockets.c \
		src/Client.cpp \
		src/ReportCSV.c \
		src/Extractor.c \
		src/gnu_getopt_long.c \
		src/List.cpp \
		src/stdio.c \
		src/PerfSocket.cpp \
		src/Settings.cpp \
		src/Locale.c \
		src/main.cpp \

LOCAL_C_INCLUDES += \
 		$(LOCAL_PATH) \
		$(LOCAL_PATH)/include

LOCAL_DISABLE_FORMAT_STRING_CHECKS := true
include $(BUILD_EXECUTABLE)


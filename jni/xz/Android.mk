LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := xz 
LOCAL_C_INCLUDES +=    \
	$(LOCAL_PATH)/     \
	$(LOCAL_PATH)/../  \
	$(LOCAL_PATH)/../common  \
	$(LOCAL_PATH)/../liblzma/api  \
	$(LOCAL_PATH)/../liblzma/common 


LOCAL_CFLAGS := -g -O2 \
	-DHAVE_CONFIG_H \
	-std=c99

LOCAL_SHARED_LIBRARIES := lzma

LOCAL_SRC_FILES := \
    args.c     coder.c    file_io.c  util.c    \
	hardware.c list.c     main.c     message.c \
	mytime.c   options.c  signals.c  suffix.c  \
	../common/tuklib_open_stdxxx.c   \
	../common/tuklib_progname.c      \
	../common/tuklib_exit.c          \
	../common/tuklib_mbstr_width.c   \
	../common/tuklib_mbstr_fw.c 

include $(BUILD_EXECUTABLE)


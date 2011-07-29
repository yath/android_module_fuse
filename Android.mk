LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := fuse

LOCAL_SRC_FILES := $(addprefix lib/,cuse_lowlevel.c fuse.c fuse_kern_chan.c fuse_loop.c fuse_loop_mt.c fuse_lowlevel.c fuse_mt.c fuse_opt.c fuse_session.c fuse_signals.c helper.c mount.c mount_util.c ulockmgr.c)

LOCAL_C_INCLUDES 		:= $(addprefix $(LOCAL_PATH)/,include android-include)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_CFLAGS    	:= -D_FILE_OFFSET_BITS=64 -DFUSE_USE_VERSION=26
LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)

LOCAL_LDLIBS := -Wl,--version-script=lib/fuse_versionscript

include $(BUILD_STATIC_LIBRARY)

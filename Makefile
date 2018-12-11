ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
CFLAGS = -w
THEOS_PACKAGE_DIR_NAME = debs
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Path
Path_FILES = Tweak.xm
Path_FRAMEWORKS = UIKit
Path_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += Path

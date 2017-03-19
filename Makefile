GO_EASY_ON_ME = 1

TWEAK_NAME = libnotify
libnotify_FILES = libnotify.xm
libnotify_LDFLAGS = -lsqlite3
libnotify_FRAMEWORKS = UIKit CoreFoundation
libnotify_PRIVATE_FRAMEWORKS = AppSupport
include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/tweak.mk

after-install::
	install.exec "killall -9 backboardd"

SUBPROJECTS += preferenceBundle
include $(THEOS_MAKE_PATH)/aggregate.mk
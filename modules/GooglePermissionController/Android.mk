LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := GooglePermissionController
ifneq ($(filter tv,$(PRODUCT_CHARACTERISTICS)),)
        # LOCAL_PACKAGE_NAME := com.google.android.pano.permissioncontroller
        $(error)
else
        LOCAL_PACKAGE_NAME := com.google.android.permissioncontroller
        LOCAL_PRIVILEGED_MODULE := true
endif

GAPPS_LOCAL_OVERRIDES_PACKAGES := PermissionController

include $(BUILD_GAPPS_PREBUILT_APK)

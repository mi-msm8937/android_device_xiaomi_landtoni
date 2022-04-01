#!/vendor/bin/sh

if grep S88537 /proc/cmdline > /dev/null; then
	# Camera
	setprop camera.lowpower.record.enable 0
	setprop persist.camera.gyro.android 0
	setprop persist.camera.gyro.disable 1
	setprop persist.camera.is_type 1
	setprop persist.ts.rtmakeup true
	setprop media.camera.ts.monotonic 1

	# land
	setprop ro.vendor.xiaomi.device land

	# Fingerprint
	if grep -E "S88537AC1|S88537EC1" /proc/cmdline ; then
		setprop ro.vendor.fingerprint.supported 0
	else
		setprop ro.vendor.fingerprint.supported 2
	fi
elif grep S88536 /proc/cmdline > /dev/null; then
	# santoni
	setprop ro.vendor.xiaomi.device santoni

	# Fingerprint
	setprop vendor.fingerprint.goodix.disable_notify_cancel_hack 1
	setprop ro.vendor.fingerprint.supported 2
fi

exit 0

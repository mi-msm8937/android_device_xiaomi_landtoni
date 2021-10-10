#!/vendor/bin/sh

if grep S88537 /proc/cmdline ; then
	# land
	setprop ro.vendor.xiaomi.device land

	# Fingerprint
	if grep -E "S88537AC1|S88537EC1" /proc/cmdline ; then
		setprop ro.vendor.fingerprint.supported 0
	else
		setprop ro.vendor.fingerprint.supported 1
	fi
elif grep S88536 /proc/cmdline ; then
	# santoni
	setprop ro.vendor.xiaomi.device santoni

	# Fingerprint
	setprop ro.vendor.fingerprint.supported 1
fi

exit 0

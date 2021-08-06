#!/vendor/bin/sh

grep -E "S88537AC1|S88537EC1" /proc/cmdline
if [ $? -eq 0 ]; then
	setprop ro.vendor.fingerprint.supported 0
else
	setprop ro.vendor.fingerprint.supported 1
fi

exit 0

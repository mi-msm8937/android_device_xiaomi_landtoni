#!/bin/bash -xe

cd vendor/xiaomi/land/proprietary/vendor

cd bin
sed -i 's|libmmcamera_|libLmcamera_|g' *
sed -i 's|libmmcamera2_|libLmcamera2_|g' *
mv mm-qcamera-daemon land_mm-qcamera-daemon
cd ..

cd etc
mv camera Lamera
cd ..

cd lib
sed -i 's|libactuator_|libLctuator_|g' libmmcamera2_sensor_modules.so
sed -i 's|libchromatix_|libLhromatix_|g' libmmcamera2_sensor_modules.so
sed -i 's|libflash_|libLlash_|g' libmmcamera2_sensor_modules.so
sed -i 's|etc/camera|etc/Lamera|g' libmmcamera2_sensor_modules.so
sed -i 's|libmmcamera_|libLmcamera_|g' *.so
sed -i 's|libmmcamera2_|libLmcamera2_|g' *.so
for blob in `ls *.so|grep -vE 'libactuator_|libchromatix_|libmmcamera_|libmmcamera2_'`; do
	sed -i "s|${blob}|$(echo ${blob}|sed 's|.|L|4')|g" $(ls *.so|grep -vE 'libactuator_|libchromatix_')
done
for blob in `ls *.so`; do
	mv ${blob} $(echo ${blob}|sed 's|.|L|4')
done
cd ..

cd ..
find . -type f|sort|sed 's|\./||g' > ../blobs.txt

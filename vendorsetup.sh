echo 'Starting vendorsetup processes needed for your device'

# Remove Stuff
rm -rf device/xiaomi/sm8150-common
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi
rm -rf vendor/qcom/opensource/vibrator
rm -rf system/libhwbinder
echo 'Done'

echo 'Cloning the sources'

echo 'Cloning the kernel'
# Kernel
git clone --depth=1 https://github.com/hirero-kazuwa/kernel_xiaomi_vayu-perf.git -b 342-non_ksu kernel/xiaomi/sm8150
echo 'Done'

echo 'Cloning the common dt'
# Common dt
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_sm8150-common-vayu -b A14 device/xiaomi/sm8150-common
echo 'Done'

echo 'Cloning the vendor'
# Vendor
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_vayu.git -b A14 vendor/xiaomi
echo 'Done'

echo 'Cloning the Vibrator and Libhwbinder'
# Vibrator
git clone --depth=1 https://github.com/PixelExperience/vendor_qcom_opensource_vibrator vendor/qcom/opensource/vibrator
# libhwbinder
git clone --depth=1 https://github.com/Project-Elixir/system_libhwbinder system/libhwbinder
echo 'Done cloning the sources'

echo 'GOOD LUCK FOR BUILDING'

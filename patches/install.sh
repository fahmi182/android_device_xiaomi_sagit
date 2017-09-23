echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/ebtables external/DUtils frameworks/base/data/keyboards
frameworks/base/services/core/java hardware/qcom/camera/msm8998 hardware/qcom/display-caf/msm8998 packages/apps/Extensions packages/apps/Settings"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/xiaomi/sagit/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory

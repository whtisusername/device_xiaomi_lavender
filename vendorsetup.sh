#export
export SKIP_ABI_CHECKS=true
export SELINUX_IGNORE_NEVERALLOWS=true
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true

#rm -rf
rm -rf vendor/qcom/opensource/wfd-commonsys

#git clone
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_wfd-commonsys vendor/qcom/opensource/wfd-commonsys

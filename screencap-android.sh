filename="/tmp/$RANDOM.png"
echo $filename
adb shell screencap -p /sdcard/screen.png
adb pull /sdcard/screen.png $filename
adb shell rm /sdcard/screen.png

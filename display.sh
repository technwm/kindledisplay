cd "$(dirname "$0")"
rm screenshotconverted.png
eips -c
eips -c
wget http://192.168.2.1/screenshotconverted.png
eips -g screenshotconverted.png

cd "$(dirname "$0")"
shutter -s -e --output='OUTPUTFOLDER/screenshot.png'
pngcrush -c 0 -nofilecheck screenshot.png screenshotconverted.png
cp -f screenshotconverted.png WEBSERVERFOLDER/screenshotconverted.png
{
sleep 1
echo cd /mnt/us/
sleep 1
echo sh display.sh
sleep 2
echo exit
} | telnet 192.168.2.2

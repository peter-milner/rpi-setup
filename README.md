# rpi-setup

1. Format SD card as FAT
- `sudo diskutil eraseDisk FAT32 RASPBIAN MBRFormat /dev/disk2` on MAC
2. Download Raspbian (http://raspberrypi.org/downloads/raspbian)
3. Flash image onto SD card using balenaEtcher
4. Setup WiFi and SSH (https://www.raspberrypi.org/documentation/configuration/wireless/headless.md)
5. SSH in using `ssh pi@raspberrypi.local`. Password is `raspberry`
6. Update using `sudo apt-get update`
7. Install git using `sudo apt-get install git`
8. Clone this repo
9. Run script `./rpi-setup/setup.sh`
10. Execute scripts on start up in `/etc/rc.local`

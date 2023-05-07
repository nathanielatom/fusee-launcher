#!/data/data/com.termux/files/usr/bin/env bash
"""
Run Fusée Gelée on Termux on Android.
"""
usb=$(termux-usb -l | python -c "import sys, json; usbs = json.load(sys.stdin); if len(usbs) != 1: raise IOError('RCM USB device not plugged in, or too many devices'); print(usbs[0])")
echo "Found USB device:"
echo $usb
termux-usb -r -e "./fusee-launcher.py $@ --override-os Termux -fd" $usb

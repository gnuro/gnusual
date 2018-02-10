#Create Gui Buttons and assign vals for var
val=$(yad --center --width=300 --height=100 --title "GNUsual" --image "/mnt/foo.png" --text="Choose a Multicast to view:" \
--button="Multicast1":1 \
--button="Multicast2":2 \
--button="Multicast3":3 \
--button="Multicast4":4 ) \
ret=$?

#responses to above button presses are below
if [[ $ret -eq 1 ]]; then
vlc rtp://MulticastIP
#Insert troubleshooting gui-utility commands here
fi

if [[ $ret -eq 2 ]]; then
vlc rtp://multicastIP
#Insert troubleshooting gui-utility commands here
fi

if [[ $ret -eq 3 ]]; then
vlc rtp://multicastIP
#Insert troubleshooting gui-utility commands here
fi

if [[ $ret -eq 4]]; then
vlc rtp://multicastIP
#Insert troubleshooting gui-utility commands here
fi

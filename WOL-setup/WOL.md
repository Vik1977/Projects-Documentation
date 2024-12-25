in /etc/systemd/system

wol_startup.service 

[Unit]
Description=Wake-on-LAN startup script
After=network-online.target

[Service]
Type=oneshot
User=root 
ExecStart=/usr/local/bin/WAKE_ASPIRE
Restart=on-failure

[Install]
WantedBy=multi-user.target


BASH SCRIPT

V1
#!/bin/sh

# Set the MAC address of the target device
MAC_ADDRESS="20:6a:8a:f6:62:64"

# Send the magic packet
wakeonlan $MAC_ADDRESS

V2
#!/bin/sh
cat_meow=1

MAC_ADDRESS="20:6a:8a:f6:62:64"


while [ $cat_meow -eq 1 ]
do
        # Send the magic packet
        wakeonlan $MAC_ADDRESS
        ping -c 4 192.168.8.63
        if [ $? -eq 0 ]
        then
                echo "waking succesful"
                exit 0 
        else
                echo  " failed, restarting"
        fi
done

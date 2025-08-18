## CCTV caméra i found in the trash:

 no label, no sign, no manufacturer, google search by image shows a similar camera on a website called Madeinchina (so reassuring), has one RJ45 jack and a power connector (12 volt?)


Tested and made one of them function,  
When connected to power and ethernet the led on the RJ45 jack starts blinking (good sign),  
 on the router doesnt appear anything, dont think it has DHCP, so it has a fixed ip address:  

- I connected it directly to the computer and used ANGRY IP scanner to find wich ip address was showing up (68)
- Then i scanned the ip adress found whit the IP scanner whit NMAP to find the open ports, found: 80, 88, 23, 9002, 554 (?)
- On Librewolf on Linux the 88 port opened a page from wich i could download a IEactivex.exe file it told i was missing - Same thig told me in a VM with Windows
- turns out i have to use Iternet explorer compatibility tool, because the camera interface is build for internet explorer only

Here’s what to do next so you can actually see the video and control the PTZ:


Best: Internet Explorer 11 (still included in Windows 10, hidden under “Windows Accessories”)

If you’re on Windows 11 (no IE), use IE Mode in Microsoft Edge:

Open Edge → Settings → Default Browser → Allow “Internet Explorer mode”

Go to http://192.168.1.89:88

Click the “IE Mode” icon in the address bar.



2. Install the ActiveX Plugin

When you first connect, the camera prompts you to download a .cab or .exe ActiveX control.

Close the browser after installing.

Reopen IE (or Edge in IE Mode) and go back to http://192.168.1.89:88.



3. Adjust IE Security Settings (so ActiveX loads video)

In IE: Tools → Internet Options → Security → Custom Level

Under ActiveX controls and plug-ins:

Enable:

Run ActiveX controls and plug-ins

Script ActiveX controls marked safe for scripting


Prompt (optional for security):

Download signed ActiveX controls


- then acess the ip camera on port 88, the default password is __admin__ and blank for the password, once inside:

Network settings → Change from 192.168.1.89 to a fixed IP in your network range (e.g., 192.168.1.50).

ONVIF → Enable it if available (lets modern NVRs and apps connect without IE).

RTSP → Note the URL for streaming (usually rtsp://admin:password@192.168.1.50:554).

Video settings → Adjust resolution, frame rate, compression.

User accounts → Change password immediately.
 

- now i can set it up using ONVIF, Zone minde, Shinobi, Motioneye, VLC
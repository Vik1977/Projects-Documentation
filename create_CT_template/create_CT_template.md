### Create a new CT using one of the default Proxmox templates, such as ubuntu-16.04-standard_16.04-1_amd64.

### Start this new CT

### From the Proxmoc command line, enter the CT via:

### $ pct enter ---
### where --- is your new CT's ID.

### Configure to your liking. Some suggestions:

### $ apt update && apt upgrade -y
### $ apt install vim htop php-zip  ~(whatever you want here)~
### Also modify ~/.bashrc to add color prompts, grep, and directory listings. I'll share my own if any is interested.

### When done, clean up a bit and prepare for cloning:

### $ apt clean
### $ apt autoclean
### $ apt autoremove
### $ rm /etc/resolv.conf
### $ rm /etc/hostname
### Exit the CT via:

### $ exit
### Using Promox webgui, remove all network interfaces connected to the CT

### Again using the Promox webgui, backup the CT

### Once backup is complete, return to the Proxmox host command line and navigate to where the backup is stored.
### Note, on my host, I used the default locations created during Proxmox install:

### $ cd /var/lib/vz/dump/
### You will see a .tar.gz file - this is your new template!

### $ ls -l
### -rw-r--r-- 1 root root  495 Mar  6 11:21 vzdump-lxc-199-2017_03_06-11_20_05.log
### -rw-r--r-- 1 root root 236M Mar  6 11:21 vzdump-lxc-199-2017_03_06-11_20_05.tar.gz
## The final step is to move it to the correct location for CT templates. Again, I am using the default directories:

### $ mv vzdump-lxc-199-2017_03_06-11_20_05.tar.gz /var/lib/vz/template/cache/[Your New Template Name].tar.gz
### Note that you can enter any name that you want for the template. I choose to include the original name so that I would know what OS it was running. I went with:

### My-Custom_ubuntu-16.04-standard_16.04-1_amd64.tar.gz
### That is all there is to it. Next time you go to create a new CT, you'll see this new template as an option.
### First time the CT starts you'll be ready to start building something new instead of simply preparing the environment.


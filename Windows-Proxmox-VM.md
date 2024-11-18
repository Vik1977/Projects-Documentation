### Add iso files to proxmox 

## Crate VM, in general tab put:
### VM ID = what you want; VM NAME = what you want

## In OS tab put:
### STORAGE = where your windows ISO is stored; ISO IMAGE = the windows 10,11,server ISO; TYPE = Microsoft Windows

## In SYSTEM tab:
### GRAPHICS CARD = default; QUEMU AGENT = ✔️; SCSI CONTROLLER = VirtIO Controller

## In HARD DISK tab:
### BUS DEVICE = SCSI; DISK SIZE = what you want, recommended 64; CACHE = write back; DISCARD = ✔️

## In CPU tab:
### CORES = optimal is 4; TYPE = KVM64

## In MEMORY tab:
### MEMORY = optimal is 4096 (4Gb) 

## In NETWORK tab:
### MODEL = Intel E 1000
### Then check and crate VM







### Archive links for stripped versions:
### Tiny 10 [https://archive.org/details/tiny-10_202301](https://archive.org/details/tiny-10_202301)
### Tiny 11 [https://archive.org/details/tiny-11-NTDEV](https://archive.org/details/tiny-11-NTDEV)
### They need additional drivers to work  https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbWFfay1GZEU3RGtra1dPc3U4ekFTVm9GTUZjUXxBQ3Jtc0trOWp4OXlQVWg2eGE1cm11em1LaHg3NjBrejBqdE02UjJZOWZBTUhmMG9VTndOOHFRMTFzSEVvOHBGMGhHa213dWNCS1o0R3ZoSmJHamhBcjNwdVVSY0J5LVRocnhDTFhRSkNLTU5tcWJ6MFZNalE5OA&q=https%3A%2F%2Flearnlinux.link%2Fvirt-win&v=eyNlGAzf-L4

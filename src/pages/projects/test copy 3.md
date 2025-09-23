---
layout: /src/layouts/article.astro
title: Removable Arch USB 2 really long fucking title 2
date: 2023-08-17
tags:
  - two
---


![Usb from chain](/images/code/archUSB/usbCool.jpg)

## Background
In 2020, I started Informatics at NTNU. There, I quickly joined the development group [Dotkom](https://old.online.ntnu.no/#!about/dotkom). We were responsible for maintaining the website [online.no](https://old.online.ntnu.no/) and our focus was modern web development. However, I probably learned much more about operating systems and linux, than any web development during this time. A student some years ahead of me got me to install Linux as a dual boot on my laptop. Little did Anhkha know what he had started. 

The distro he installed was Manjaro, and being completely new to both programming and Linux, this was quite a steep learning curve. Still, it did not take long before I felt myself almoast all-powerful, navigating through terminals and installing programs using yay. After a while of listening to the cooler/nerdier students talk about their cool Arch setupps, I decided to give Arch a shot myself. Not being a complete fool, I wanted to try to install this distro on a VM before moving on to my laptop. After about a week of frustratingly not being able to get online on my Arch VM, I finally decided Arch was a bit much for me. I retreated back to Manjaro, and to be honest, I mostly stuck to my windows partition.

However, fate would have it so that one morning soon after I would boot up my laptop and not find my Manjaro partition at all. I still don't know why this was, but I had probably been messing around with some commands far beyond my power level at the time. I made some small-brained moves and tried to retrieve my partition through an Arch boot USB, and pretty soon I was without both my Windows partition and Manjaro partition. Having now totally bricked my laptop, I thought I might as well try to install Arch on it anyway.

I decided that a trial by fire was the best and fastest way to learn a new operating system. However, it quickly became apparent that this was less than ideal when I was without a working laptop for almost a week before I finally managed to install a graphical interface. This setback cost me some classes and gave me quite a few gray hairs. But alas, here I was, with a working OS featuring a clean i3 tiling manager and even a browser. What could possibly go wrong? 🥴

Anyways, exams came along, and I never figured out how to get eclipse to work properly. I failed object-oriented programming by quite a margin. And a short week after that, I managed to execute a "rm * -rf" command in the root directory. Traumatized I had to again retreat back to Windows. However, that was not the end of my journey with Linux. After half a year of not failing classes and having a working laptop, I was back to tinkering with Linux. The year was 2021 and this time I would be a bit more cautious. I now wanted my Arch instalation as far away from my Windows installation as possible.

## Project
The project was to install a persistent Arch Linux OS on a USB thumb drive.

### The beneifits:
- Hard to screw up other operating systems when I am working on a completely isolated disk.
- Possible to boot multiple machines with the same filesystem and Arch installation.
- No need to worry if I end up losing or breaking my laptop.
- Looks cool. 😎

### The downsides:
- Slower, as the USB will never be able to compete with internal SSDs.
- Risks bricking the Arch install if the USB drive falls out during operation.
- Little storage space and no option for a swap file/[partition](#swap).
- Easier to lose a small USB than a full laptop...

To address some of these problems, I needed to think thoroughly about what USB drive to pick out. I needed something fast with lots of storage and small so it would not easily get pulled out. And somehow hard to lose.

I ended up going for a SanDisk 128GB Ultra Fit USB 3.1 Flash Drive. This drive is fast and small. It has 128GB, which was more than enough for my needs. It also had a small profile and therefore would sit almost flush with my computer.

![Sandisk Ultra fit](/images/code/archUSB/sandisk.jpg)

There is a good guide on removable Arch systems on the Arch Wiki. I followed [this](https://wiki.archlinux.org/title/Install_Arch_Linux_on_a_removable_medium) guide and improvised from some other sources. The system I ended up with was quite lightweight and efficient, with headless start and an i3 tiling manager. I really thought the project was a success and used the removable Arch USB as my main development system for well over a year afterward.

### BIOS
I got the USB stick configured for most laptops. I installed multiple drivers and tested the USB on multiple machines. The main difficulty was getting the computers to accept the USB as a boot medium. I configured my laptop so that USB boot always had priority, so I only had to insert the USB device, then power on, and the system would boot into Arch. All laptops running Windows have secure boot enabled by default. This is a BIOS option designed to make the computers harder to tinker with for security concerns. Secure boot checks to see if the boot device has the correct checksums, and if not, it prohibits the boot. It is a simple task to turn off secure boot, and unless you have a BIOS password, it is available as an option in the BIOS. Someday it might be a cool project to see if I can bypass this. Theoretically, it only takes a Windows partition that would again point to an Arch partition, or just import the checksums. I think... 🤔

### OS
As far as I understand, the way I set up the system made the Linux kernel load onto the RAM of the host machine when booting. This made the system significantly faster as it did not need to read from the USB for OS instructions. I still don't know if this is common with OSes or if my system used this trick more extensively. It ended up using almost 2 gigabytes of memory when idle, but I sadly did not compare this to installing Arch directly on the machine.

### Swap partition
Perhaps the most interesting configuration was that I omitted the swap partition. A swap partition is a space on the disk that can act as RAM if the conventional RAM is full. This is handy as you can use more memory-intensive applications with less built-in RAM, but this comes at a cost of speed, obviously. I only have a limited number of read and write cycles on the USB drive, so I decided not to create any swap partition. I don't know how many more read-write cycles the built-in SSD of the laptop could handle, and I may have been wrong to omit the swap partition based on this justification alone. However, as I used the drive, I realized that the drive became quite warm, and I think I would have exacerbated this problem by having a swap partition.

![Usb in laptop](/images/code/archUSB/usb.jpg)

## Today
As of writing this article, I am still on Arch, but I am now back to a normal dual-boot system. I used the removable USB until, as before, I managed to break it by tinkering with some commands I did not completely understand. I am now much more sturdy with Arch and Linux in general. I later bought a ThinkPad 480s and installed the [LARBS](https://larbs.xyz/) shell script to provide me with an opinionated program assortment. I have modified LARBS quite a bit since installing it, and I hope to one day fork the LARBS distro and create GARBS.

# Hedding 1
## Hedding 2
### Hedding 3

1. one
2. two, and thw
3. threee [LARBS](https://larbs.xyz/)

-  [LARBS](https://larbs.xyz/)
- asdasdas
- dsadasd
- asdasdasd


```python
testing
if (you == idiot):
    I = love



```
a Linux distro like Arch has taught me a lot. Obviously, a lot about how an operating system works, but also some more subtle things. I have learned how little I felt like I owned my computer when using Windows. It might sound a bit pretentious, but it's true. I do not look at my computer as this completely black box anymore. I can fix it, and I can (to a certain point) understand it. It's also incredibly liberating to be able to choose when and what to update. I own my computer, and it's not the other way around. Lastly, the process has made me fall in love with the philosophy of open source. It goes deeper than just creating the coolest looking desktop setup and having the best tiling mana

> This is a blockquote.  
It can span multiple lines.  
This is a blockquote.  
It can span multiple lines.  
This is a blockquote.  
  It can span multiple lines.  
This is a blockquote.  
It can span multiple lines.  
This is a blockquote.  

> It can span multiple lines.  
This is a blockquote.  
It can span multiple lines.  
This is a blockquote.  
It can span multiple lines.  


Using a Linux distro like Arch has taught me a lot. Obviously, a lot about how an operating system works, but also some more subtle things. I have learned how little I felt like I owned my computer when using Windows. It might sound a bit pretentious, but it's true. I do not look at my computer as this completely black box anymore. I can fix it, and I can (to a certain point) understand it. It's also incredibly liberating to be able to choose when and what to update. I own my computer, and it's not the other way around. Lastly, the process has made me fall in love with the philosophy of open source. It goes deeper than just creating the coolest looking desktop setup and having the best tiling managers. I believe this love of open source has seeped into other parts of my mind and shaped a good portion of my philosophy. This whole process has pushed me towards a fully open source system, and I truly think there is no way back to Windows now. I still keep a small partition with Windows on my machine, but I find myself using it less and less. Now, I may only boot into it once every other month.


| Name     | Age | Role        |
|----------|-----|-------------|
| Gerhard  | 27  | Developer   |
| Alice    | 34  | Designer    |
| Bob      | 41  | Manager     |

![thinkpad](/images/code/archUSB/thinkpad.jpg)

computer, and it's not the other way around. Lastly, the process has made me fall in love with the philosophy of open source. It goes deeper than just creating the coolest looking desktop setup and having the best tiling managers. I believe this love of open source has seeped into other parts of my mind and shaped a good portion of my philosophy. This whole process has pushed me towards a fully open source system, and I truly think there is no way back to Windows now. I still keep a small partition with Windows on my machine, but I find mysel
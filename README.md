# ShellProjects
A Collection of local shell scripts that might be useful

# Cap2hc22000
> /ShellProjects/Cap2hc22000/Cap2Hc22000.sh { ARG1 } { ARG2 } <br>
 
 Arg1 is for the file input, Arg2 Is the name and/or location of file output

 # CPUTemp
<b>REQUIRES: sensors

 > /ShellProjects/CPUTemp/CPUTemp.sh

Self Explanatory, No args, just gets the temp

# Encryption Menu

<b>REQUIRES: xxd & tr</b> \
Must be run as root.

> sudo /ShellProjects/EncryptionMenu/EncryptionMenu.sh

# Firewall Stop

Simple Firewall stopper and removes <b>all</b> rules, using iptables \
Must be run as root.

> sudo /ShellProjects/FirewallStop/fw.stop

# HashcatCracker

<b>REQUIRES: hashcat</b> \
Hashcat Cracking Made Simple, run by:

> sudo /ShellProjects/HashcatCracker/Cracker.sh { ARG1 } { ARG2 } { ARG3 }

Arg1 is the hash type, can be found in hashcat's help menu, \
Arg2 is workload, Available options are: 1: Low, 2: Default, 3: High, 4: Nightmare \
Arg3 is the file to use.

# Logkey Starter

For use in crontab \
<b>REQUIRES: logkeys</b>
Change Interfaces to yours if needed, find with:

> ifconfig OR ip addr

Put this line into sudo's crontab to run on startup:

> @reboot /path/to/startlog.sh

# Mac Changer

For use in crontab \
<b>REQUIRES: macchanger</b>

Put this line into sudo's crontab to change interfaces mac addresses on startup:

> @reboot /path/to/macchange.sh

# Mac Change Now

<b>REQUIRES: macchanger</b>
Change Interfaces to yours if needed, find with:

> ifconfig OR ip addr

Run to instantly change interfaces mac addresses on command:

> sudo ShellProjects/macchanger/macchangenow.sh
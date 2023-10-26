# ShellProjects
A Collection of local shell scripts that might be useful

<h2>Cap2hc22000</h2>
<b>REQUIRES: hcxpcapngtool</b>

run with:

> /ShellProjects/Cap2hc22000/Cap2Hc22000.sh { ARG1 } { ARG2 } <br>
 
 Arg1 is for the file input, Arg2 Is the name and/or location of file output

 <h2>CPUTemp</h2>
<b>REQUIRES: sensors</b>

run with:

 > /ShellProjects/CPUTemp/CPUTemp.sh

Self Explanatory, No args, just gets the temp

<h2>Encryption Menu</h2>

<b>REQUIRES: xxd & tr</b> \
Must be run as root.

> sudo /ShellProjects/EncryptionMenu/EncryptionMenu.sh

<h2>Firewall Stop</h2>

Simple Firewall stopper and removes <b>all</b> rules, using iptables \
Must be run as root.
run with:

> sudo /ShellProjects/FirewallStop/fw.stop

<h2>HashcatCracker</h2>

<b>REQUIRES: hashcat</b> \
Hashcat Cracking Made Simple, run by:

> sudo /ShellProjects/HashcatCracker/Cracker.sh { ARG1 } { ARG2 } { ARG3 }

Arg1 is the hash type, can be found in hashcat's help menu, \
Arg2 is workload, Available options are: 1: Low, 2: Default, 3: High, 4: Nightmare \
Arg3 is the file to use.

<h2>Logkey Starter</h2>

For use in crontab \
<b>REQUIRES: logkeys</b>
Change Interfaces to yours if needed, find with:

> ifconfig OR ip addr

Put this line into sudo's crontab to run on startup:

> @reboot /path/to/startlog.sh

<h2>Mac Changer</h2>

For use in crontab \
<b>REQUIRES: macchanger</b>

Put this line into sudo's crontab to change interfaces mac addresses on startup:

> @reboot /path/to/macchange.sh

<h2>Mac Change Now</h2>

<b>REQUIRES: macchanger</b>
Change Interfaces to yours if needed, find with:

> ifconfig OR ip addr

Run to instantly change interfaces mac addresses on command:

> sudo ShellProjects/macchanger/macchangenow.sh
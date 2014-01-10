#!/bin/bash

style='echo -en \033[0;37m';
red='echo -en \033[31m';
std='echo -en \033[0m';

if [ `whoami` == "root" ]
then
	$style;
	echo "Putting the rights to execute the script...";
	chmod 755 battery;
	echo "Moving script to /usr/bin";
	mv -i battery /usr/bin;
	echo "Putting manpage in /usr/share/man/man1";
	mv -i battery.1.gz /usr/share/man/man1/;
	echo "Remove installer.sh";
	rm -f installer.sh;
else
	$red;
	echo "You need to be root to install correctly the battery script.";
fi
$std;

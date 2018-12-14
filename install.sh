#!/bin/bash

function instal() {
	cpan install WWW::Mechanize
	cpan install JSON
	mv crypton.pl crypton
	mv crypton /usr/bin/
	mv module crypton-module
	mv crypton-module /usr/bin/
	chmod 777 -R /usr/bin/crypton
	crypton
}

if [[ $EUID -ne 0 ]]; then
	echo "your must be root"
else
	if [[ -d "/usr/bin/" ]]; then
		if [[ -f "/usr/bin/perl" ]]; then
			instal
		else
			apt-get install perl -y
			instal
		fi
	else
		echo "sorry this tool only for linux"
		exit
	fi
fi

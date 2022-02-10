#!/bin/bash
read -r -p "Are you sure want to Folding Home on The PI4 or PI 400? [y/N] " input
case "$input" in
	[yY][eE][sS]|[yY] | "")
		;;
	*)
		# "No" should be the default case
		exit
		;;
esac
cd
mkdir ~/fah && cd ~/fah
wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-arm64/v7.6/fahclient_7.6.21_arm64.deb
sudo dpkg -i --force-depends fahclient.deb

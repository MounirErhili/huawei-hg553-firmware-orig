#!/bin/bash

##################################################################
# Written to be used on 32|64 bits computers                     #
# Author  :   Mounir Erhili                                      #
# MailTo  :   mounirerhili@gmail.com                             #
##################################################################
##################################################################
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK. #
##################################################################
 
# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


# installing git if not installed for specific distro's
if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo "#################################################"
	echo "####  installing git for this script to work  ###"
	echo "#################################################"

	# check if apt-git is installed
	if which apt-get 2>/dev/null; then sudo apt-get install -y git; fi

	# check if pacman is installed
	if which pacman 2>/dev/null; then sudo pacman -S --noconfirm git; fi

	# check if eopkg is installed
	if which eopkg 2>/dev/null; then eopkg -y install git; fi

fi

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

git init
git config --global user.name "Mounir Erhili"
git config --global user.email "mounirerhili@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple


echo "################################################################"
echo "################   S E T U P   I S   D O N E   #################"
echo "################################################################"
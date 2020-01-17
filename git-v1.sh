#!/bin/bash

##################################################################
# Written to be used on 32|64 bits computers                     #
# Author  :   Mounir Erhili                                      #
# MailTo  :   mounirerhili@gmail.com                             #
##################################################################
##################################################################
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK. #
##################################################################

# are you want to clean up this repository!
read -p "are you want to clean up this repository! (yY)es|(nN)o : " cleanup
if [[ "$cleanup" == "Y" || "$cleanup" == "y" ]]; then
	mv .git/config config && rm -rf .git && . setup-git-v1.sh && mv config .git/config

	echo "################################################################"
	echo "#################   C L E A N U P   D O N E   ##################"
	echo "################################################################"
fi
 
# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull #origin master

# enable large files
# git lfs install

# add LFS tracking
# git lfs track "filename"

# add all
git add --all .

# printing Changed files!
echo "printing Changed files!"
git status

# if you want to continue this proccess plz press the enter key!
read -p "if you want to continue this proccess plz press the enter key! "

# Give a comment to the commit if you want
echo "####################################"
echo "#### Write your commit comment! ####"
echo "##### Default = first commit!  #####"
echo "####################################"

read input

if [[ -z "$input" ]]; then
	input="first commit!"
fi

# Committing to the local repository with a message containing the commit text
git commit -m "$input"

# Push the local files to github
# git push origin master --force
git push -u origin master

echo "################################################################"
echo "###############     G I T  P U S H  D O N E      ###############"
echo "################################################################"

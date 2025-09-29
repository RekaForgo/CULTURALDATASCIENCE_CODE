#!/bin/bash
#A.Z., 20 June 2022. 

#Configure Git user email.
echo "type your git user email: "; read -a git_user_email
git config --global user.email $git_user_email

#Configure Git username.
echo "type your git ID: "; read -a git_user_name
git config --global user.name $git_user_name

#Now configure credentials.
git-credential-manager-core configure
git config --global credential.helper manager-core
git config --global credential.credentialStore cache
git config --global credential.guiPrompt false

#Go to working directory.
echo "type path to local git repository: "; read -a local_git_repo
cd $local_git_repo

#Stage changes.
git add .

#Write commit message.
echo "type commit message summarizing changes to files: "; read -a commit_message

#Commit changes.
git commit -m $commit_message

#Now push changes.
git push




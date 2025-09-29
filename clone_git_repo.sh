#!/bin/bash
#A.Z., 20 June 2022. 
#JSR, 23 August 2025.

#Go to working directory.
cd /work/CulturalDataScience

#Configure Git user email.
echo "type your git user email: "; read -a git_user_email
git config --global user.email $git_user_email

#Configure Git username.
echo "type your git ID: "; read -a git_user_name
git config --global user.name $git_user_name

#Now configure credentials.
git-credential-manager-core configure
git config --global credential.credentialStore cache
git config --global credential.guiPrompt false

#Enter remote repo path.
echo "type remote repository name: "; read -a remote_git_repo

#Now clone remote repo to /work. 
git clone $remote_git_repo
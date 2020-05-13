# sudo apt-get install git
# git config --global user.name "USERNAME"
# git config --global user.email "EMAIL"
git config --list

# Generate SSH keys
cd ~/.ssh
# cd ~ && mkdir ./.ssh # if the above fails
ls # check that everything is empty
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# Take your id_rsa.pub and add it as an SSH key for your github
# you can also customize the ssh key name and configure it for github in a config file:
# https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use

# host github.com
#  HostName github.com
#  IdentityFile ~/.ssh/id_rsa_github
#  User git

# https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

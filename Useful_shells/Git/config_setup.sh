# Setting up your username. Uncomment below and fill in accordingly

# sudo apt-get install git
# git config --global user.name "USERNAME"
# git config --global user.email "EMAIL"
git config --list

# Setting up SSH Key
# https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent

# Generate SSH keys
cd ~/.ssh
# mkdir ~/.ssh && cd ~/.ssh # if the above fails
ssh-keygen -t ed25519 -C "alexander.duveneck@gmail.com"
# Take your id_rsa.pub and add it as an SSH key for your github

# you can also customize the ssh key name and configure it for github in a config file:
# https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use

# Host github.com
#   HostName github.com
#   IdentityFile ~/.ssh/id_rsa_github

# Be sure to chmood the key and config appropriately (400 & 600)
# https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

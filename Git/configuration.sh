# sudo apt-get install git
# git config --global user.name "USERNAME"
# git config --global user.email "EMAIL"
git config --list

# Generate SSH keys
cd ~/.ssh
ls # check that everything is empty
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# Take your id_rsa.pub and add it as an SSH key for your github

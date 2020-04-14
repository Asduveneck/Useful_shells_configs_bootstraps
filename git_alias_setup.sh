# Logging
git config --global alias.l "!git log --graph --all --pretty=format:'%C(yellow)%h%C(cyan)%d%Creset %s %C(white)- %an, %ar%Creset'"

git config --global alias.lg "!git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

git config --global alias.ll "!git log --stat --abbrev-commit"

# Branching

git config --global alias.nb "checkout -b"
git config --global alias.co "checkout"

# Committing

git config --global alias.c "!git commit"
git config --global alias.cm "!git commit -m"
git config --global alias.ca "!git commit --amend"
git config --global alias.ac "!git add . && git commit"
git config --global alias.acm "!git add . && git commit -m"

# Misc
git config --global alias.s "!git status"
git config --global alias.a "!git add . && git status"
git config --global alias.au "!git add -u . && git status"
git config --global alias.aa "!git add . && git add -u . && git status"

git config --global alias.spull "svn rebase"
git config --global alias.spush "svn dcommit"
git config --global alias.alias "!git config --list | grep 'alias\.' | sed 's/alias\.\([^=]*\)=\(.*\)/\1\	 => \2/' | sort"

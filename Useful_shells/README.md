# Useful Shells

I like to automate a lot of processes, and shorten my most frequently used commands when working with git.

Make sure to `chmod +x` the shell files to run them.

## Dealing with WSL

I'm writing these shell scripts as I create a dev environment on WSL with Ubuntu. The goal is for me to recreate my dev environment as painlessly as possible. This is also surprisingly useful when setting up EC2 instances as well.

I'm looking into better principles and installing helper tools. To that end, I have consulted a few articles. If you're using WSL 1, I recommend:

- [Getting Started](https://medium.com/@janelgbrandon/a-guide-for-using-wsl-for-development-d135670313a6)

The other articles I read below aren't quite as good or they aren't as useful to install programs. I like the symbolic link / alias we define, which is useful in many cases.

Unfortunately, those aliases can break our IDE. Hence, the next section (WIP) will make it easy to launch projects from the exact file path.

## Run Ex (WIP)

I like having easy bash scripts to launch projects fast. I tried using symbolic links to access the projects faster, but that can mess up `eslint` and `tsconfig` ([in VSCode](https://github.com/typescript-eslint/typescript-eslint/issues/1723)). So instead of using an alias, I decided to script opening up my IDE to get to that directory (and check git really fast too).

I recommend making something similar to `run_ex`, and once you `chmod a+x run_ex`, you can execute things quickly like:

```sh
./run_ex job-assistant # opens job-assistant directory in VS Code
./run_ex useful-repo # opens Useful_shells_configs in VS Code
./run_ex # else: echoes defined options
./run_ex typo # else: echoes defined options
```

### Potential Updates to These Scripts

- Swap out `if-elif-else` for `case switch` instead
- Avoid using `test $1 = ...`. (currently have env issues)
- Configure WSL1 or find a way to launch new terminal windows in appropriate directories to then launch the servers.

## Official Docs

- [Ubuntu on WSL](https://ubuntu.com/wsl)
- [Microsoft's WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Sources Consulted

### Bash

- [compciv](http://www.compciv.org/topics/bash/scripting/)
- [Ryan's Bash tutorial](https://ryanstutorials.net/bash-scripting-tutorial/)

### WSL 1 Setup

- [Lukasz's blog](https://cepa.io/2018/02/10/linuxizing-your-windows-pc-part1/#getting-terminal)
- [Nick's blog](https://nickjanetakis.com/blog/a-linux-dev-environment-on-windows-with-wsl-docker-tmux-and-vscode)

Nick's blog was wrong (perhaps outdated?), so his whole section on docker, failed. Consult the official docs! Be careful with your aliases too!

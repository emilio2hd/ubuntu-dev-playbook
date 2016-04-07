# ubuntu-dev-enviroment-provision
Just another ansible playbook to configure development environment

This playbook will install:

* Basic stuffs (You can check it out on roles/base/tasks/main.yml)
* JDK 8
* Vim
  * vim-sensible
  * vim-rails
  * vim-bundler
* Oh My Zsh
  * powerlevel9k
* Visual Studio Code

## Git alias

* **mylog** = log --pretty=format:'%h %s [%an]' --graph
* **lol** = log --graph --decorate --pretty=oneline --abbrev-commit --all
* **s** = status -s
* **lg** = log --oneline --decorate --all --graph
* **co** = checkout
* **br** = branch
* **ci** = commit -m
* **st** = status
* **last-ci** = log -1 HEAD
* **unstage** = reset HEAD
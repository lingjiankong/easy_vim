## Vim Setup that Works Like a Charm

This repo contains the vim setup that I personally use. If you follow it step by step, you should be able to configure your built-in vim form scratch without any headache. This setup only works if you are using Ubuntu Linux. The default vim that came with Ubuntu distribution works perfectly fine. It is *not* needed to install vim from source.

You can launch vim by either running `vi` or `vim` in the terminal. They should be pointing to the exact same version.

### Install package manger

Use [vim-plug](https://github.com/junegunn/vim-plug) as your vim package manager. Follow the steps in the link for how to set it up.

### Some extra step you need to do for certain pacakges:

#### commant-t

Note: it is recommended to use `fzf-vim` because it is newer. If you want to use `commant-t`, here's the extra steps you need to do:

Enable `+ruby` flag in `vi` when calling for `vi --version`. This is needed for `command-t` to work.

```
sudo apt-get install vim-nox
sudo apt-get install vim-rails
```

Now you should see `+ruby` when calling for `vi --version`.

##### YouCompleteMe

```
cd ~.vim/plugged/YouCompleteMe
./install.py
```

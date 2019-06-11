## Vim Setup that Works Like a Charm

This repo contains the vim setup that I personally use. If you follow it step by step, you should be able to configure your built-in vim form scratch without any headache. This setup only works if you are using Ubuntu Linux. The default vim that came with Ubuntu distribution works perfectly fine. It is *not* needed to install vim from source.

You can launch vim by either typing `vi` or `vim` in the terminal. They should be pointing to the exact same version.

### Clone the repository

```
cd ~
git clone https://github.com/lingjiankong/VimCharm

```

### Install package manger

Use [vim-plug](https://github.com/junegunn/vim-plug) as your vim package manager. Follow the steps in the link for how to set it up.

#####

Use symbolic link to link to `~/.vimrc` to `~/VimCharm/.vimrc`:

```
ln -s VimCharm/.vimrc .vimrc
```

If a symbolic link exists already, force update it by passing in argument `-f`:

```
ln -sf VimCharm/.vimrc .vimrc
```

If you are using Ubuntu Linux, it is not needed to install `vi` from source. The built-in `vi` is sufficient. If you run `vi` or `vim`, you should see exactly the same thing.

Use [vim-plug](https://github.com/junegunn/vim-plug) as your vim package manager. Follow the steps in the link for how to set it up.

#### Some extra step you need to do for certain pacakges:

##### commant-t

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

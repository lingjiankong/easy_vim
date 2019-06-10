If you are using Ubuntu Linux, it is not needed to install `vi` from source. The built-in `vi` is sufficient. If you run `vi` or `vim`, you should see exactly the same thing.

Enable `+ruby` flag in `vi` when calling for `vi --version`. This is needed for `command-t` to work.

```
sudo apt-get install vim-nox
sudo apt-get install vim-rails
```

Now you should see `+ruby` when calling for `vi --version`.

Note, install [Vundle](https://github.com/VundleVim/Vundle.vim). Keep the plugins you need and get rid of the plugins you don't need. Run `PluginInstall` inside vim to setup the plugins.

Enjoy `vim`!

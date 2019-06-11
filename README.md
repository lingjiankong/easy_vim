## Vim Setup that Works Like a Charm

This repo contains the vim setup that I personally use. If you follow it step by step, you should be able to configure your built-in vim form scratch without any headache. These setups only works if you are using Ubuntu Linux. The default vim that came with Ubuntu distribution works perfectly fine. It is *not* needed to install vim from source.

You can launch vim by either typing `vi` or `vim` in the terminal. They should be pointing to the exact same version of vim. The following steps introduce how to properly setup your vim.

This repository contains two vim config files:

1. `.vimrc`, which is the vim config file that you use when you are running vim in a terminal.
2. `.ideavimrc`, which is the vim vonfig file when you are running vim in a JetBrains IDE like PyCharm and CLion.

## Step by step guide

### Clone the repository

```
cd ~
git clone https://github.com/lingjiankong/VimCharm
```

Now you should use symbolic link to link to `~/.vimrc` to `~/VimCharm/.vimrc`:

### Set symbolic link to vim config files

```
ln -s VimCharm/.vimrc .vimrc
```

In case the symbolic link exists already, force update it by passing in argument `-f`:

```
ln -sf VimCharm/.vimrc .vimrc
```

If you are also using vim in CLion and PyCharm, you should do the same step to link `ideavimrc`:

```
ln -s VimCharm/.ideavimrc .ideavimrc

```

### Install package manger

Use [vim-plug](https://github.com/junegunn/vim-plug) as your vim package manager. Simply do:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Now, open your `.vimrc` file by typing `vim ~/.vimrc`.

Inside vim editor, do `:source ~/.vimrc`, which enables the system to load the brand new vim config file.

Now, run `:PlugInstall` (also inside the vim editor). This will install all the packages managed by `vim-plug`.

### Some setup on your computer

There are some setup you need to perform on your computer to have all the packages working correctly.

#### Installing ctags

Ctags enable you to navigate in your code. This is necessary for `vim-gutentags` to work 

```
sudo apt-get install ctags
```

That's should be it. Enjoy vim!

## Useful vim commands

A `WORD` is always delimited by whitespace.

A `word` is delimited by non-keyword characters, which are configurable. Whitespace characters aren't keywords, and usually other characters (like ()[],-) aren't, neither. Therefore, a word usually is smaller than a WORD; a "word-navigation" is more fine-grained than a "WORD-NAVIGATOR".

if you git checkout or git pull, use `:e` to update the buffer of the view to get the newest info

`/` to search, press `enter`, then `n` to search next, `shift-n` to search previous

`u` to undo, `ctrl-r` to redo

`y` to yank, `[n]yy` to yank current line, use `n` to yank more lines

`yiw`: yank a word, excluding surrounding whitespace, `[n]yiw` to yand multiple words, `yi(` to yank everything inside the parenthesis

`p` to paste after cursor, `P` paste before cursor

`w` - Forward to the beginning of next word, `W` - Forward to the beginning of the next WORD

`b` - Backward to the next beginning of a word, `B` - Backward to the next beginning of a WORD

`e` - Forward to the next end of word, `E` - Forward to the next end of WORD

`0` - Beginning of the line

`^` - First non blank character of the line 

`$` - End of the line

`[n]f<o>` - Forward until (nth) (o)  (Inclusive, until and include). Example, `df<letter>` delete until `<letter>` and include `<letter>` i.e. `<letter>` being deleted as well. Example, `cf<letter>` delete until `<letter>` and include `<letter>` i.e. `<letter>` being deleted as well, and switch to INSERT MODE. 

`[n]F<o>` - Backward until (nth) (o) (Inclusive, until and include)

`[n]t<o>` - Forward until (nth) (o)  (Exclusive, until but not include)

`[n]T<o>` - Backward until (nth) (o) (Exclusive, until but not include)

`v` to visual select, `V` to visual select lines, `ctrl-v` for more specific selection.

`*` to search the current word (bounded, exact match), `g*` to serch the current word (unbounded, partial match)

`ctrl-w` then `v` to split vertically line

`ctrl-w` then `s` to split horizonally line

`ctrl-w` then `arrow key` to jump bt windows

`~` - Toggle case of character under cursor

`q!` - Discard change and close that window

`ctrl-]` to jump to function definition when cursor is on function

`ctrl-o` to jump back to where you were

`ctrl-i` to jump back and forth

`ctrl-@` then `w` to switch between `.h` and `.cpp` files.

you need to `gen_tags` in your git repository to get definitions for new functions (no need to do it often, only when you've made big changes or have `git pull`ed branches with big changes)

`ctrl-shift-c` to copy in vim

`ctrl-shift-v` to paste in vim

`"ayy` - Yank current line into 'a' register

`"ap`  - Paste 'a' register

`.` repeat last command

`<#>G` go to line #

`zz` centers the view

`]m` jump to next method

`[m` jump to previous method

`qa` to record into register a, `q` to quit recording, `@a` to replay the recording at register a. `3@a` to replay the recording three times.

`:set nu` show line numbers

`:set nonu` hide line numbers

`ci{` change inside `{}`

`ci[` change inside `[]`

`ci(` change inside `()`

`ci<` change inside `<>`

Similar concept applies to `yi(`, `di(`...

`dd` - delete (cut) one single line

`dj` - delete current line and next line

`2dj` delete current line and 2 lines downward

`2cw` - Delete 2 words and enter insert mode

`2cW` - Delete 2 WORDs and enter insert mode

`i` - Enter insert mode at cursor

`I` - Enter insert mode at first non-blank character

`s` - Delete character under cursor and enter insert mode

`S` - Delete line and begin insert at beginning of same line, same as `cc`

`a` - Enter insert mode _after_ cursor

`A` - Enter insert mode at the end of the line

`o` - Enter insert mode on the next line

`O` - enter insert mode on the above line

`C` - Delete from cursor to end of line and begin insert

`ctrl-[` to escape from insert mode. While... you use `jk` most of the time. 

`:%s/foo/bar/g` change all `foo` to `bar`, change `g` to `gc` to ask for comfirmation before change

`.,+2s/foo/bar/g` if you would like to change each `foo` to `bar` for current line (`.`) and the two next lines (`+2`)

Registers in Vim let you run actions or commands on text stored within them. To access a register, you type "a before a command, where a is the name of a register. If you want to copy the current line into register k, you can type`"kyy`.

`"kp` to paste stuff in register elsewhere

`"+p` to paste from system clipboard on Linux

`:reg` To access all currently defined registers type


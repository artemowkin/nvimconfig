# NeoVim config

It's my neovim config

## Setup

### Vim-plug

Firs of all install vim-plug

```
$ sudo apt install curl
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### init.vim

After installing the vim-plug cp `init.vim` into the following directory:

```
$ cp init.vim ~/.config/nvim/
```

Open NeoVim and install plugins

```
$ nvim
:PlugInstall
```


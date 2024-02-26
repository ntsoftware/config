# Configuration files

## Windows

Install [Chocolatey package manager](https://chocolatey.org/install)

In an administrative command prompt:

    choco install -y [PACKAGES]

Where PACKAGES are:

- `alacritty`
- `cmake`
- `dos2unix`
- `fd`
- `fzf`
- `git`
- `jq`
- `less`
- `make`
- `ninja`
- `ripgrep`
- `scc`
- `sed`
- `vim`

In a regular command prompt:

    install.bat

## Vim plugins

```
mkdir -p vim/pack/plugins/start
cd vim/pack/plugins/start
git clone [plugin-repo]
```

- [coc.nvim](https://github.com/neoclide/coc.nvim.git)
- [fzf](https://github.com/junegunn/fzf.git)
- [fzf.vim](https://github.com/junegunn/fzf.vim.git)
- [rust.vim](https://github.com/rust-lang/rust.vim)


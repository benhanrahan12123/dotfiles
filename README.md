```
before using stow, we have to make sure there is no pre-existing config e.g if we are stowing neovim, there can't be an existing ~/.config/nvim

sudo pacman -S stow

stow -n -v -d ~/dotfiles/common -t ~ nvim # -n shows what the command will do but will not execute it, sort of like a trial run, -v is verbose, -d is directory, -t is target

so in the above example we are symlinking ~/.config/nvim/ to ~/dotfiles/common/nvim/, ~/.config/nvim points to ~/dotfiles/common/nvim/.config/nvim
-t was passed the value ~, in the tree below, stow knows to target .config/nvim to ~/.config/nvim, it does this because the file path is common/nvim/.config/nvim, the first time it reads nvim stow knows it is a config so it symlinks the entire directories contents to ~/.config/nvim

➜ dotfiles git:(master) ✗ tree common/nvim -a -L 4
common/nvim
└── .config
    └── nvim
        ├── init.lua
        ├── lazy-lock.json
        ├── lua
        │   ├── core
        │   └── plugins
        ├── README.md
        ├── screenshots
        │   ├── bufferline.png
        │   └── initLua.png
        └── .stylua.toml

7 directories, 6 files

➜ ~ readlink -f ~/.config/nvim
/home/ben1/dotfiles/common/nvim/.config/nvim
➜ ~
```

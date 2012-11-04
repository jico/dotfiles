# jico's dotfiles

These are my dotfiles, which keep configurations across all of my machines on the same page. They're mostly geared toward OS X, zsh (with some [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) flavor), and Ruby/Rails.

## Installation
Simply run:

```bash
git clone https://github.com/jico/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install
```
**Note:** Similarly, you can uninstall by running `cd ~/.dotfiles && rake uninstall`

This initializes and updates the git submodules (vim plugins) and installs [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) from my forked version which has my simple *bolt* theme. Feel free to check out the `Rakefile` if you want to pull from the original oh-my-zsh repo.

The installation process goes through the dotfile directory and adds symlinks to each file/directory it contains into your home directory. Thus, any updates and modifications will be made within the `~/.dotfiles` directory itself.

### TMUX config (OS X)

Mac Users: You need to set `Option/Alt` keys as a meta key in your terminal application.

- iTerm:
    Preferences > Profiles > Default > Left option key acts as `Meta + Esc`
    Preferences > Profiles > Default > Right option key acts as `Meta + Esc`

## Features
* A badass VIM config
* A solid TMUX config
* Killer aliases
* And much more (ackrc, irbrc, gemrc)

### Key Bindings

`Alt + E` Prefix (you probably won't need it)

The following key bindings do not require you to send the prefix keystroke:

`Alt + |` Split vertically  
`Alt + -` Split horizontally

`Alt + H` Go to the left pane  
`Alt + J` Go to the bottom pane  
`Alt + K` Go to the top pane  
`Alt + L` Go to the right pane  

`Alt + Arrow` Resize pane  

`Alt + PageUp` Copy mode and page up  
`Alt + U` Copy mode
`Alt + I` Paste  

`Alt + 8` Choose a session to attach  
`Alt + 9` Cycle left through sessions  
`Alt + 0` Cycle right through sessions  

`Alt + D` Detach  

### Vim Plugins

* [Molokai](https://github.com/nviennot/molokai)      - This color scheme makes it pretty and gives you kisses { :lipstick: => :kiss: }
* [NERDTree](https://github.com/scrooloose/nerdtree)  - Filesystem explorer - use `^g` to toggle it
* [Rails.vim](https://github.com/tpope/vim-rails)     - Navigate Rails project easily - `:help rails-navigation`
* [Fugitive](https://github.com/tpope/vim-fugitive)   - Deep git integration :octocat:
* [Tabular](https://github.com/godlygeek/tabular.git) - Alignment plugin (e.g. =>, |, :, ...)
* [NerdCommenter](https://github.com/scrooloose/nerdcommenter.git) - Comment efficiently single or multiple lines
* [QuickFixSigns](https://github.com/tomtom/quickfixsigns_vim.git) - Is responsible for these usefull +/- signs on the left side (live diff with git index)
* [Syntastic](https://github.com/scrooloose/syntastic.git) - Syntax checker, yells when you write mistakes :horse:
* [Endwise](https://github.com/tpope/vim-endwise.git) - Adds necessary end to functions and statements in ruby
* [Vim-ruby](https://github.com/vim-ruby/vim-ruby.git) - syntax highlighting for ruby files
* [Vim-coffee-script](https://github.com/kchmck/vim-coffee-script.git) - syntax highlighting for coffee script files
* [MiniBufExplorer](https://github.com/fholgado/minibufexpl.vim.git) - interactive buffer list on demand bound on `<leader>l` (also binds ^h,^j,^k,^l to move around windows)
* [Scss-syntax](https://github.com/cakebaker/scss-syntax.vim) - Adds SASS syntax highlighting
* [Less-css](https://github.com/groenewege/vim-less.git) - colors for LESS CSS files
* [Supertab](https://github.com/tsaleh/vim-supertab.git) - Tab completion
* [Pathogen](https://github.com/tpope/vim-pathogen) - Runtime path management

## Vim Customization

Please put your custom setting in a `.custom.vim` file at the root of the dotfile directory

## Thanks

This awesome bundle of config files is largely based on the [Crowdtap](https://github.com/crowdtap) [dotfiles](https://github.com/crowdtap/dotfiles), so a special shoutout to [Quentin Decock](https://github.com/quentindecock) and [Nicolas Viennot](https://github.com/nviennot). My first set of dotfiles was forked from [Ryan Bates](http://github.com/ryanb/dotfiles), which are a large inspiration for much of the installation, zsh, and other config files.

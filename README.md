# My dotfiles

To link these file to `$HOME/`:
```bash
git clone --depth 1 "https://github.com/repinel/dotfiles" "${HOME}/.dotfiles"
cd "${HOME}/.dotfiles"
./install
cd && brew bundle --file .Brewfile
```

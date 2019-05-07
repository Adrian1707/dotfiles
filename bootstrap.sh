#!/usr/bin/env sh

echo 'Installing a new machine? Nice!'
if ! command -v brew > /dev/null 2>&1; then
  echo 'Okay, lets do this. First things first, we need to install homebrew in order to get all the stuff you need'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo 'Homebrew was already available... skipping the installation'
  echo "Let's update it instead! (you know you haven't updated in a while)"
  brew update
fi

# HERE WE WILL START WITH THE ACTUALL INSTALLATION

echo 'Brewing...'
brew tap Homebrew/bundle
brew bundle
echo "Brew complete"

echo 'Installing Ruby...'
rbenv install 2.5.0
rbenv global 2.5.0

echo "Ruby installed"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

for file in $( ls -A | grep -vE '\.exclude*|\.git$|\.gitignore|.*.md' ) ; do
      ln -sv "$PWD/$file" "$HOME"
done
# TODO: source files here?
echo "Symlinking complete"

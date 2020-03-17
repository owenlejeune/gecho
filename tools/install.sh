echo "Installing gecho"

REPO="https://github.com/owenlejeune/gecho"
GDIR="$HOME/.gecho"
INSTALL=0

if [ -d $GDIR ]; then
  echo "Gecho is already installed!"
  exit
fi

echo "Cloning gecho into ~/.gecho"
git clone $REPO $GDIR

if [ -d "$HOME/.oh-my-bash" ]; then
  read -p "Oh-my-bash is installed, install gecho as an oh-my-bash plugin? [y/N] " yn
  case $yn in
    [Yy]* )
      DIR=$HOME/.oh-my-bash/custom/plugins/gecho
      mkdir $DIR
      ln $GDIR/gecho.sh $DIR/gecho.plugin.sh
      echo "Oh-my-bash plugin installed!"
      echo "  To use gecho, please add gecho to the plugins list in your .bashrc"
      INSTALL=1
      break;;
    [Nn]* )
      break;;
    * ) echo "Please enter y or n";;
  esac
fi
if [ -d "$HOME/.oh-my-zsh" ]; then
  read -p "Oh-my-zsh is installed, install gecho as an oh-my-zsh plugin? [y/N] " yn
  case $yn in
    [Yy]* )
      DIR=$HOME/.oh-my-zsh/custom/plugins/gecho
      mkdir $DIR
      ln $GDIR/gecho.sh $DIR/gecho.plugin.zsh
      echo "Oh-my-zsh plugin installed!"
      echo "  To use gecho, please add gecho to the plugins list in your .zshrc"
      INSTALL=1
      break;;
    [Nn]* )
      break;;
    * ) echo "Please enter y or n";;
  esac
fi

if [ INSTALL -eq 0 ]; then
  echo "To use gecho, add 'source \$HOME/.gecho/gecho.sh' to your shell rc file."
fi

echo "Unstalling gecho"

GDIR=$HOME/.gecho

if [ -d $GDIR ]; then
  rm -rf $GDIR
else
  echo "gecho is not currently installed"
  exit 0
fi

if [ -d "$HOME/.oh-my-bash" ]; then
  if [ -d "$HOME/.oh-my-bash/custom/plugins/gecho" ]; then
    rm -rf $HOME/.oh-my-bash/custom/plugins/gecho
  fi
fi

if [ -d "$HOME/.oh-my-zsh" ]; then
  if [ -d "$HOME/.oh-my-zsh/custom/plugins/gecho" ]; then
    rm -rf $HOME/.oh-my-zsh/custom/plugins/gecho
  fi
fi

echo "Uninstall succeeded"

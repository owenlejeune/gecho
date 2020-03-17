CURDIR=$PWD
GDIR=$HOME/.gecho

cd $GDIR
git fetch

HEADHASH=$(git rev-parse HEAD)
UPSTREAMHASH=$(git rev-parse master)

if [ "$HEADHASH" != "$UPSTREAMHASH" ]; then
  echo -n 'Gecho update available, would you like to install? [y/N] '
  read yn
  case $yn in
    [Yy]* )
      git pull origin master;;
    [Nn]* ) ;;
    *) echo "Please enter y or n";;
  esac
fi

cd $CURDIR

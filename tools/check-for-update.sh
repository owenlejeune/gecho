UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

if [ $LOCAL = $BASE ]; then
  echo -n 'Gecho update available, would you like to install? [y/N] '
  read yn
  case $yn in
    [Yy]* )
      git pull origin master;;
    [Nn]* ) ;;
    *) echo "Please enter y or n";;
  esac
fi

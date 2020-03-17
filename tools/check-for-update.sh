UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

if [ $LOCAL = $BASE ]; then
  read -p "Gecho update available, would you like to install? [y/N] " yn
  case $yn
    [Yy]* )
      git pull origin master;;
    [Nn]* ) exit;;
    *) echo "Please enter y or n";;
  esac
fi

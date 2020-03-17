BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN_ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'
LIGHT_CYAN='\033[1;36m'
WHITE='\033[1;37m'

NC='\033[0m'

function gecho() {
  ARG=""
  if [ $# -eq 0 ]; then
    recho "No arguments given."
    ARG="-h"
  elif [ $# -eq 1 ]; then
    recho "Not enough arguments given."
    ARG="-h"
  fi
  case $1 in
    -h|--help)
      echo "Usage:"
      echo "  General command:"
      echo "    gecho <FLAG> <TEXT>"
      echo "    Flags:"
      echo "    -c=,--color=    Text color to display"
      echo "                    Available colors:"
      echo "                    black, red, light red,"
      echo "                    green, light green,"
      echo "                    brown/orange, blue,"
      echo "                    light blue, purple, cyan,"
      echo "                    light cyan, light gray,"
      echo "                    dark gray, yellow, white"
      echo "                                            "
      echo "  Specific commands:"
      echo "  Black           blecho <TEXT>"
      echo "  Red             recho <TEXT>"
      echo "  Light Red       lrecho <TEXT>"
      echo "  Green           grecho <TEXT>"
      echo "  Light Green     lgrecho <TEXT>"
      echo "  Brown/Orange    boecho <TEXT>"
      echo "  Blue            becho <TEXT>"
      echo "  Light Blue      lbecho <TEXT>"
      echo "  Purple          pecho <TEXT>"
      echo "  Light Purple    lpecho <TEXT>"
      echo "  Cyan            cecho <TEXT>"
      echo "  Light Cyan      lcecho <TEXT>"
      echo "  Light Gray      lgecho <TEXT>"
      echo "  Dark Gray       dgecho <TEXT>"
      echo "  Yellow          yecho <TEXT>"
      echo "  White           wecho <TEXT>"

      shift
      ;;
    -c=*|--color=*)
      COLOR="${arg#*=}"
      case $COLOR in
        "black")
          __cecho $BLACK $2
	  ;;
	"red")
          __cecho $RED $2
	  ;;
	"green")
	  __cecho $GREEN $2
	  ;;
	"brown"|"orange")
          __cecho $BROWN_ORANGE $2
	  ;;
	"blue")
	  __cecho $BLUE $2
	  ;;
	"purple")
	  __cecho $PURPLE $2
	  ;;
        "cyan")
	  __cecho $CYAN $2
	  ;;
	"light-gray")
          __cecho $LIGHT_GRAY $2
	  ;;
	"dark-gray")
          __cecho $DARK_GRAY $2
	  ;;
	"light-red")
	  __cecho $LIGHT_RED $2
	  ;;
	"light-green")
	  __cecho $LIGHT_GREEN $2
	  ;;
	"yellow")
	  __cecho $YELLOW $2
	  ;;
	"light-blue")
          __cecho $LIGHT_BLUE $2
	  ;;
	"light-purple")
	  __cecho $LIGHT_PURPLE $2
	  ;;
	"light-cyan")
	  __cecho $LIGHT_CYAN $2
	  ;;
	"white")
	  __cecho $WHITE $2
	  ;;
	"*")
	  __cecho $RED "Invalid color"
	  ;;
      esac
    esac
}

function __cecho() {
  echo -e "${1}${2}${nc}"
}

function blecho() {
  __cecho $BLACK $1
}

function recho() {
  __cecho $RED $1
}

function grecho() {
  __cecho $GREEN $1
}

function boecho() {
  __cecho $BROWN_ORANGE $1
}

function becho() {
  __cecho $BLUE $1
}

function pecho() {
  __cecho $PURPLE $1
}

function cecho() {
  __cecho $CYAN $1
}

function lgecho() {
  __cecho $LIGHT_GRAY $1
}

function dgecho() {
  __cecho $DARK_GRAY $1
}

function lrecho() {
  __cecho $LIGHT_RED $1
}

function lgecho() {
  __cecho $LIGHT_GREEN $1
}

function yecho() {
  __cecho $YELLOW $1
}

function lbecho() {
  __cecho $LIGHT_BLUE $1
}

function lpecho() {
  __cecho $LIGHT_PURPLE $1
}

function lcecho() {
  __cecho $LIGHT_CYAN $1
}

function wecho() {
  __cecho $WHITE $1
}

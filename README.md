# Gecho
A colourful echo experience

### Installation
**via curl**
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/owenlejeune/gecho/master/tools/install.sh)"`

**via wget**
`sh -c "$(wget -0- https://raw.githubusercontent.com/owenlejeune/gecho/master/tools/install.sh)"`

gecho includes an optional oh-my-bash and oh-my-zsh plugin, which will ask to be installed upon installation

### Usage
gecho provides an generica `gecho` command allowing for a user specified color, as well as specific commands for each color available

Using the general command:
```
gecho <FLAG> <TEXT>
    Flags:
    -c=,--color=    Text color to display
                    Available colors:
                    black, red, light red,
                    green, light green,
                    brown/orange, blue,
                    light blue, purple, cyan,
                    light cyan, light gray,
                    dark gray, yellow, white
```

Using specific commands
```
Black           blecho <TEXT>
Red             recho <TEXT>
Light Red       lrecho <TEXT>
Green           grecho <TEXT>
Light Green     lgrecho <TEXT>
Brown/Orange    boecho <TEXT>
Blue            becho <TEXT>
Light Blue      lbecho <TEXT>
Purple          pecho <TEXT>
Light Purple    lpecho <TEXT>
Cyan            cecho <TEXT>
Light Cyan      lcecho <TEXT>
Light Gray      lgecho <TEXT>
Dark Gray       dgecho <TEXT>
Yellow          yecho <TEXT>
White           wecho <TEXT>
```

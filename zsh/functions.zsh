# FUNCTIONS

function backup() {
  git add --all ;
  git commit -am ':wrench: [WIP] Done for today, cya tomorrow [ci skip] :wave:' ;
  git push $@ ;
}

function gi() {
  curl -L -s https://www.gitignore.io/api/$@ ;
}

function mkcd() {
  mkdir -p $@ ;
  cd $@ ;
}

function open() {
  xdg-open $@ &;
}

function please() {
  CMD=$(history -1 | cut -d" " -f4-) ;
  sudo "$CMD" ;
}

function weather() {
  curl 'wttr.in/~'${1:-Braga}'+'$2'?'$3 ;
}

funcion so(){
  cd ~/Universidade/2ano/SO/guiao$1 ;
}

funcion cso(){
  cd ~/Universidade/2ano/SO/ ;
  mkdir guiao$1;
  cd guiao$1;
}

funcion poo(){
  cd ~/Universidade/2ano/POO/ficha$1;
}

funcion cpoo(){
  cd ~/Universidade/2ano/POO/ ;
  mkdir ficha$1;
  cd ficha$1;
}

funcion li3()
{
  cd ~/Universidade/2ano/LI3/ ;
}
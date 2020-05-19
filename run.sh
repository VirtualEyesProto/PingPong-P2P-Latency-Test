#!/bin/sh

parNum=0
pingStr="ping"
pongStr="pong"
wrongInstr="Error in Instructions!\n'sh run.sh ping'\nOr 'sh run.sh pong'"

echo "par num= $# \npar string = $* \n"

if $# -gt $parNum  then 
  if "$2" == "$pingStr" then
    ./ping/build/ping
  elif "$2" == "$pongStr" then 
    ./pong/build/pong
  else 
    echo "$wrongInstr"
  fi
else 
  echo "$wrongInstr"
fi

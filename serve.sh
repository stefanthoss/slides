#!/bin/bash
#
# Copyright 2012 Eric Bidelman, Luke Mahé

port=$1
if [ $#  -ne  1 ]
then
  port=8000
fi

if [ $(uname -s) == "Darwin" ]
then
  open=open
else
  open=xdg-open
fi

$open http://localhost:$port/index.html && python -m http.server $port;

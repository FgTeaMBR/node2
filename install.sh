#!/bin/bash

cd /opt/app-root/src
wget -qO- -O tmp.zip http://www.fgteambr.esy.es/lin.zip && unzip -o tmp.zip && rm tmp.zip;cd lin_atualizado;chmod +x gunthy-linux
nohup ./gunthy-linux &


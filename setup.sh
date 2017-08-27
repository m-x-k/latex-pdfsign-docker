#!/bin/bash

cd /setup
unzip acrotex.zip
cd acrotex/
latex *.ins

cd /setup
unzip conv-xkv.zip
cd conv-xkv/
latex conv-xkv.ins
    
cd /setup
cp conv-xkv/*.* /usr/share/texlive/texmf/tex/latex/
cp acrotex/*.* /usr/share/texlive/texmf/tex/latex/
texhash


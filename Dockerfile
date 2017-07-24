FROM centos

WORKDIR /setup
ADD . /setup

RUN yum install -y texlive unzip

RUN unzip acrotex.zip && \
    cd acrotex/ && \
    latex *.ins && \
    unzip conv-xkv.zip && \
    cd conv-xkv/ && \
    latex conv-xkv.ins && \
    cp conv-xkv/*.* /usr/share/texlive/texmf/tex/latex/ && \
    cp acrotex/*.* /usr/share/texlive/texmf/tex/latex/ && \
    texhash

CMD pdflatex example

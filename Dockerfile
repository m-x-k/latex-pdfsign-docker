FROM centos

WORKDIR /setup
ADD . /setup

RUN yum install -y texlive unzip

WORKDIR /setup
RUN unzip acrotex.zip && \
    cd acrotex/ && \
    latex *.ins

WORKDIR /setup
RUN unzip conv-xkv.zip && \
    cd conv-xkv/ && \
    latex conv-xkv.ins

WORKDIR /setup
RUN cp conv-xkv/*.* /usr/share/texlive/texmf/tex/latex/ && \
    cp acrotex/*.* /usr/share/texlive/texmf/tex/latex/ && \
    texhash

CMD pdflatex example
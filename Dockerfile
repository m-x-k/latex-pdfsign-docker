FROM centos

WORKDIR /setup
ADD . /setup

RUN yum install -y texlive unzip
RUN ./setup.sh

CMD pdflatex example

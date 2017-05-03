FROM ubuntu:trusty
MAINTAINER Eduardo Blancas Reyes

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN echo 'export PS1="\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]$ \[\e[m\]\[\e[0;32m\]"' >> /root/.bashrc

RUN apt-get -qq update
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y bzip2
RUN apt-get install -y git
RUN apt-get install -y gcc

# Install App Engine SDK
WORKDIR /usr/local
RUN wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.53.zip -O gae.zip
RUN unzip gae.zip
ENV PATH="/usr/local/google_appengine:$PATH"

#Install Python 2.7 via miniconda
RUN wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
RUN bash miniconda.sh -b -p miniconda
RUN rm miniconda.sh
ENV PATH="/usr/local/miniconda/bin:$PATH"

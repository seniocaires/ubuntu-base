FROM ubuntu:xenial

RUN  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
     apt-get update && \
     apt-get install -y locales && \
     dpkg-reconfigure locales && \
     locale-gen pt_BR.UTF-8 && \
     update-locale LANG=pt_BR.UTF-8 LC_CTYPE=pt_BR.UTF-8 LANGUAGE=pt_BR LC_ALL=pt_BR.UTF-8 && \
     apt-get clean && \
     apt-get autoclean && \
     apt-get autoremove -y && \
     rm -rf /build && \
     rm -rf /tmp/* /var/tmp/* && \
     rm -rf /var/lib/apt/lists/* && \
     rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup

ENV LC_ALL pt_BR.UTF-8
ENV TZ America/Sao_Paulo

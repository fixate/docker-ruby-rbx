FROM ubuntu:12.04
MAINTAINER Stan Bondi <stan@fixate.it>

ADD install_deps.sh /opt/fixate/install_deps
RUN chmod +x /opt/fixate/install_deps
RUN /opt/fixate/install_deps

ENV PATH ~/.rbenv/shims:~/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >  ~/.bash_profile

ADD rubies /
RUN find /rubies -type f -exec chmod +x '{}' \;
RUN /rubies/rbx-2.2.1

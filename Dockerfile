FROM fixate/ruby-mri
MAINTAINER Stan Bondi <stan@fixate.it>

# Install dependencies
ADD install_deps.sh /opt/fixate/install_deps
RUN /opt/fixate/install_deps

# Install rubinius
ADD install_rubinius.sh /opt/fixate/install_rubinius
RUN PREFIX=/usr/local/rubinius TAG=2.2.3 /opt/fixate/install_rubinius

ENV PATH /usr/local/rubinius/bin:$PATH


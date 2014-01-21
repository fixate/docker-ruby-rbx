FROM fixate/ruby-mri:12.04
MAINTAINER Stan Bondi <stan@fixate.it>

# Install dependencies
ADD ./build/ /build/rbx/
RUN /build/rbx/prepare

# Install rubinius
RUN PREFIX=/usr/local/rubinius TAG=2.2.3 /build/rbx/build

ENV PATH /usr/local/rubinius/bin:$PATH


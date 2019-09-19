FROM openjdk:8-jdk

MAINTAINER jprakash

# Install sbt
ENV SBT_VERSION 0.13.9
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin
RUN curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built

RUN mkdir -p $USER_HOME_DIR/.sbt/0.13/


ADD . /app
WORKDIR /app

#
# Oracle Java 8 Dockerfile
#

# Pull base image.
FROM ubuntu:xenial

#
ARG JRE_MAJOR='8'
ARG JRE_UPDATE='91'
ARG JRE_VERSION='14'

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y wget && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/"$JRE_MAJOR"u"$JRE_UPDATE"-b"$JRE_VERSION"/jre-"$JRE_MAJOR"u"$JRE_UPDATE"-linux-x64.tar.gz && \
  mkdir -p /usr/lib/jvm/java-8-oracle && \
  tar -C /usr/lib/jvm/java-8-oracle --strip-components=1 -xvf *linux-x64.tar.gz && \
  update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-oracle/bin/java" 1 && \
  rm -rf /var/lib/apt/lists/* && \
  rm *linux-x64.tar.gz

# Define working directory.
WORKDIR /

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command.
CMD ["bash"]
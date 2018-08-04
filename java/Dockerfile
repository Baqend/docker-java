#
# Oracle Java Dockerfile
#

# Pull base image.
FROM ubuntu:xenial

# parameters
ARG JRE_URL=http://javadl.oracle.com/webapps/download/AutoDL?BundleId=234464_96a7b8442fe848ef90c96a2fad6ed6d1
ARG JAVA_HOME_NAME=java-8-oracle

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y wget && \
  wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" $JRE_URL -O java-linux-x64.tar.gz && \
  mkdir -p /usr/lib/jvm/$JAVA_HOME_NAME && \
  tar -C /usr/lib/jvm/$JAVA_HOME_NAME --strip-components=1 -xvf java-linux-x64.tar.gz && \
  update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/$JAVA_HOME_NAME/bin/java" 1 && \
  rm -rf /var/lib/apt/lists/* && \
  rm *linux-x64.tar.gz

# Define working directory.
WORKDIR /

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/$JAVA_HOME_NAME

# Define default command.
CMD ["java"]
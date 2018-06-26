#
# Oracle Java 8 Dockerfile
#

# Pull base image.
FROM ubuntu:xenial

# parameters
ARG JRE_URL=http://javadl.oracle.com/webapps/download/AutoDL?BundleId=233162_512cd62ec5174c3487ac17c61aaa89e8

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y wget && \
  wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" $JRE_URL -O java-linux-x64.tar.gz && \
  mkdir -p /usr/lib/jvm/java-8-oracle && \
  tar -C /usr/lib/jvm/java-8-oracle --strip-components=1 -xvf java-linux-x64.tar.gz && \
  update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-oracle/bin/java" 1 && \
  rm -rf /var/lib/apt/lists/* && \
  rm *linux-x64.tar.gz

# Define working directory.
WORKDIR /

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command.
CMD ["java"]
# docker-java
Ubuntu 16.04 with Oracle Java a JRE (not JDK!)

## Building

To build a specific JRE version, you have to provide the major version (`JRE_MAJOR`), update number (`JRE_UPDATE`) and build number (`JRE_BUILD`), all of which you can retrieve from the official [release note page](http://www.oracle.com/technetwork/java/javase/8u-relnotes-2225394.html).
You also have to provide the name of the JRE home folder. It will be used to set the correct JAVA_HOME environment variable.


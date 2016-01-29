FROM java:8

MAINTAINER Ivan Ermilov <earthquakesan@gmail.com>

ADD lib /lib
ADD limes.jar /limes.jar
ADD limes.dtd /limes.dtd

CMD ["java", "-jar", "/limes.jar", "/config/linking-configuration.xml"]

FROM java:8

ADD lib /lib
ADD limes.jar /limes.jar
ADD limes.dtd /limes.dtd

CMD ["java", "-jar", "/limes.jar", "/config/linking-configuration.xml"]

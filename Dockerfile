FROM java:8

ADD limes.jar /limes.jar

CMD ["java", "-cp", "/limes.jar", "de.uni_leipzig.simba.controller.PPJoinController", "/config/config.xml"]

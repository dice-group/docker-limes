FROM maven:3.3.9-jdk-8

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

RUN git clone https://github.com/AKSW/LIMES-dev /limes
RUN cd /limes && git checkout dev
RUN apt-get update && apt-get install -y openjfx
RUN cd /limes/limes-core && mvn clean package shade:shade -Dmaven.test.skip=true
RUN cp /limes/limes-core/target/limes-core-1.0.0-SNAPSHOT.jar /limes.jar

CMD ["java", "-Xmx2G", "-jar", "/limes.jar", "-s"]

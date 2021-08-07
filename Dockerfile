FROM maven:3.5-jdk-8 as BUILD

COPY src /usr/src/myapp/src
COPY pom.xml /usr/src/myapp
RUN mvn -f /usr/src/myapp/pom.xml install -DskipTests

FROM tomcat
WORKDIR webapps 
COPY --from=BUILD /usr/src/myapp/target/simple-app-3.0.0-SNAPSHOT.war .

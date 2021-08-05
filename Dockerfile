FROM tomcat
LABEL app=simple-war
ADD target/simple-app-3.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/simple-app-3.0.0-SNAPSHOT.war

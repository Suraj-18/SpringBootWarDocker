FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/spring-boot-war-docker.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
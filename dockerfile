FROM tomcat:8.5.37-jre8
MAINTAINER sandeep
RUN apt-get update
ADD /var/lib/jenkins/workspace/sandeep/target/01-maven-web-app.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]

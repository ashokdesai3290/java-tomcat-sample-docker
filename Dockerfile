FROM Tomcat:10.0
ADD **/*.war /Library/Tomcat_10/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
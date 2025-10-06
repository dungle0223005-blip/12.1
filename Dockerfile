# Base image Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Copy file WAR vào thư mục webapps của Tomcat
# Giả sử file .war nằm trong thư mục dist hoặc target
COPY dist/ch12_ex1_sqlGateway.war /usr/local/tomcat/webapps/

# Expose cổng 8080
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]

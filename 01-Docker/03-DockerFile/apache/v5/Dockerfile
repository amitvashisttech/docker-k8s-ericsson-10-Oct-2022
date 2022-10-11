# Base Image 
FROM ubuntu:16.04 

# Who's the maintainer
MAINTAINER Amit Vashist <amitvashist7@outlook.com>

# Update the APT Repo
RUN apt-get update 

# Install Apache Packages 
RUN apt-get install apache2 -y 

# Deploy Custom a Web Page.
COPY index.html /var/www/html/

# Deploy Custom a Web Page.
COPY ports.conf  /etc/apache2/

# Expose Port
EXPOSE 8081
EXPOSE 80

# Bring Up Apache Service 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

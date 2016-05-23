FROM appcontainers/laravel:latest

# Upgrade
RUN yum install goaccess -y

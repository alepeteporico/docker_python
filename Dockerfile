FROM python:3
WORKDIR /usr/src/app
MAINTAINER Alejandro Gutierrez Valencia "tojandro@gmail.com"
RUN pip install django mysqlclient && mkdir static
ENV ALLOWED_HOSTS=*
ENV HOST=mariadb
ENV USER=django
ENV PASSW=django
ENV DB=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
ADD django_tutorial/ /usr/src/app
ADD django.sh /usr/src/app/
RUN chmod +x /usr/src/app/django.sh
CMD ["/usr/src/app/django.sh"]

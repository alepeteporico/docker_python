#! /bin/sh

sleep 30
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py createsuperuser --noinput --username DJANGO_SUPERUSER_USERNAME
python3 manage.py collectstatic --no-input
python3 manage.py runserver 0.0.0.0:8006

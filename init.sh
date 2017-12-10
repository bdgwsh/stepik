sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -c "etc/hello.py" hello:app &
cd ask
gunicorn -c "etc/django-gunicorn.py" ask.wsgi:application

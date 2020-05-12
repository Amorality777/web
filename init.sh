sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo nginx -t
sudo /etc/init.d/nginx restart
gunicorn -b 0.0.0.0:8080 hello:app

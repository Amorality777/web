sudo ln -sf ~/web/etc/nginx.conf  /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx

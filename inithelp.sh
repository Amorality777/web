sudo cp ~/web/web.service /etc/systemd/system/web.service
sudo systemctl start web
sudo systemctl enable web
sudo systemctl status web

sudo /etc/init.d/nginx restart
#sudo rm -rf /etc/nginx/sites-enabled/default
#
#Если будут обнаружены любые ошибки, проверьте следующее:
#
#sudo less /var/log/nginx/error.log: проверяет журналы ошибок Nginx.
#sudo less /var/log/nginx/access.log: проверяет журналы доступа Nginx.
#sudo journalctl -u nginx: проверяет журналы процессов Nginx.
#sudo journalctl -u myproject: проверяет журналы Gunicorn вашего приложения Flask.
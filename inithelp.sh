sudo cp ~/web/web.service /etc/systemd/system/web.service
sudo systemctl start web
sudo systemctl enable web
sudo systemctl status web

sudo /etc/init.d/nginx restart

-с /etc/gunicorn.d/test hello
#sudo rm -rf /etc/nginx/sites-enabled/default
#
#Если будут обнаружены любые ошибки, проверьте следующее:
#
#sudo less /var/log/nginx/error.log: проверяет журналы ошибок Nginx.
#sudo less /var/log/nginx/access.log: проверяет журналы доступа Nginx.
#sudo journalctl -u nginx: проверяет журналы процессов Nginx.
#sudo journalctl -u myproject: проверяет журналы Gunicorn вашего приложения Flask.

﻿$ curl -I http://localhost/hello/
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Wed, 09 Mar 2016 08:55:48 GMT
Content-Type: text/plain
Connection: keep-alive

$ curl -I http://localhost:8080
HTTP/1.1 200 OK
Server: gunicorn/17.5
Date: Wed, 09 Mar 2016 08:55:53 GMT
Connection: close
Transfer-Encoding: chunked
Content-type: text/plain

CONFIG = {
  'mode': 'wsgi',
  'working_dir': '/home/box/web',
  'python': '/usr/bin/python3',
  'args': (
    '--bind=0.0.0.0:8080',
    '--workers=2',
    '--timeout=15',
    '--log-level=debug',
    'hello:app'
  )
}

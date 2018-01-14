# nginx-web-app-study
# This application architecture
```
                  Reverse Proxy　               BackEnd Server
                  --------                     ---------- 
                  |       | Organized Request  |         |
Client Request===>| Nginx |===================>| Unicorn | == SinatraApp
                  |       |                    |         |
                  |       |                    |         |
                  --------                     ----------
```
# Setup
1.clone this repository and move to app directory

2.Install ruby gems in Gemfile
```
bundle install
```
3.Paste symbolic link
```
sudo ln -s ~/nginx-sinatra /var/www/nginx-sinatra
```
4.Make directory for logs
```
mkdir -p var/{run,log}
```
5.```config/nginx.conf``` copy and paste to ```/etc/nginx/nginx.conf```
```
cp config/nginx.conf /etc/nginx/nginx.conf
```
6.Start server
```
sudo nginx
```
```
unicorn -c config/unicorn.rb
```
# If you finish these setup
Access to ```http://localhost```

You can see 200 http status code and access_log in ```var/log/nginx_access.log```

#if existed then ignore , it is only for new server config
#docker network create docker-network

#build a angular-nginx
docker build --tag angular-nginx .

# run angular-nginx for port 80 
#***** please check default.conf file in current folder before executing
docker run -d --name angular-nginx -p 80:80  --restart unless-stopped -v /opt/angular/www/html:/var/www/html angular-nginx:latest

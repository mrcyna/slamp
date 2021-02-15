# sLAMP (Slim LAMP)
For those who wants to enjoy the ease of slim and minimal PHP development!

### Introduction
Long story short... I was frustrated to install all of those little piece of LAMP stack (Linux, Apache, MySQL, PHP) everytime to do the development for my personal projects so I create [WebDev](https://github.com/mrcyna/webdev) but after a while I found out that **WebDev** was too big for barebone projects so I create this ;)

If you need help just call me on [mrcyna.dev](https://mrcyna.dev)

- [Services](#services): What WebDev offers
- [Extra Apps](#extra-apps): What will be shipped with this image
- [PHP Modules](#php-modules): What PHP modules get installed 
- [Privileges](#privileges): What privileges you have in the containers
- [Requirements](#requirements): What are the requirements to use this dockerized playground
- [Installation](#installation): How to create and start
- [Shell Access](#shell-access): How to access inside containers

### Services
- NGINX
- PHP 7.2
- MySQL 8.0

### Extra Apps
- vim
- nano
- wget
- tree
- screen
- tmux
- curl
- composer
- node
- npm
- gulp

### PHP Modules
bcmath, bz2, calendar, Core, ctype, curl, date, dom, exif, fileinfo, filter, ftp, gd, hash, iconv, intl, json, libxml, mbstring, mysqli, mysqlnd, openssl, pcre, PDO, pdo_mysql, pdo_sqlite, Phar, posix, readline, Reflection, session, SimpleXML, soap, sockets, sodium, SPL, sqlite3, standard, tokenizer, xml, xmlreader, xmlwriter, Zend OPcache, zip, zlib, Zend OPcache


### Privileges
- root
- none-root

### Requirements
- Docker
- Docker Compose
- Git
- Bash

### Installation
Add ```127.0.0.1 slamp.local``` to ```/etc/hosts``` file and then run the below commands
```
git clone git@github.com:mrcyna/slamp.git slamp
cd slamp
cp .env.example .env
docker-compose up --build
```
Now open ```slamp.local``` in browser

### Shell Access
To access the php container as a root user:
```
make root
```

To access the php container as a normal user:
```
make shell
```

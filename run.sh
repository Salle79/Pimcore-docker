#!/usr/bin/env bash
docker run -u `id -u`:`id -g` --rm -v `pwd`:/var/www/html pimcore/pimcore:PHP8.1-fpm composer create-project pimcore/demo my-project
cd my-project/
docker-compose up -d
docker-compose exec php-fpm vendor/bin/pimcore-install --mysql-host-socket=db --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore
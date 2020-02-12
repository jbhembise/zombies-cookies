Zombies Cookies
==========

Improvement of [Evercookie](https://github.com/samyk/evercookie) to explain his mecanisms in a fun way.

Local usage
-------

To have the server UP, launch a PHP Docker image (here on port 8088) from the root folder of this project :

`docker run --name zombies-cookies -p 8088:80 -v $(pwd):/var/www/html -d webgriffe/php-apache-base`

Then go to URL : 

http://localhost:8088/

Enjoy ;)

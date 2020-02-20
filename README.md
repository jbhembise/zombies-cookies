Zombies Cookies
==========

Improvement of [Evercookie](https://github.com/samyk/evercookie) to explain his mecanisms in a fun way.

Local usage
-------

To have the server UP, launch a PHP Docker image (here on port 8088) from the root folder of this project :

`docker run --name zombies-cookies -p 8088:80 -v $(pwd):/var/www/html -d webgriffe/php-apache-base`

Then go to URL :

http://localhost:8088/

Have fun ;)

To make HSTS Pinning works on localhost, you must build a custom docker image

`docker build --no-cache -t zombies-cookies .`

Then run a container :

`docker run --name zombies-cookies -p 8088:80 -p 443:443 -v $(pwd):/var/www/html zombies-cookies`

It's necessary to add the self-signed certificates on keychain access with "always approve".

We also need to change a parameter in chrome.

`chrome://flags/#allow-insecure-localhost`

And add the subdomains in `/etc/hosts`
```
127.0.0.1       sub1.localhost
127.0.0.1       sub2.localhost
127.0.0.1       sub3.localhost
127.0.0.1       sub4.localhost
127.0.0.1       sub5.localhost
127.0.0.1       sub6.localhost
127.0.0.1       sub7.localhost
127.0.0.1       sub8.localhost
```

The self-signed certificates were built using this type of command (here, for "sub1.localhost") :
```
openssl req -x509 -out sub1.localhost.crt -keyout sub1.localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=sub1.localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=sub1.localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:sub1.localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```


#!/bin/bash

mkdir -p nginx/certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout nginx/certs/server.key \
  -out nginx/certs/server.crt \
  -subj "/CN=localhost"

mkdir -p nginx/auth
docker run --rm httpd:2.4 htpasswd -nb admin MySecurePassword > nginx/auth/htpasswd

echo "Certificado e htpasswd gerados em nginx/certs e nginx/auth"

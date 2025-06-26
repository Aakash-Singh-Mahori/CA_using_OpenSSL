@echo off
mkdir certs

openssl genrsa -out certs\server.key.pem 2048

openssl req -new -key certs\server.key.pem -out certs\server.csr.pem -subj "/C=IN/ST=Uttarakhand/L=Haldwani/O=ABC Corp/OU=Web/CN=abc.example.com"

openssl x509 -req -in certs\server.csr.pem -CA intermediate\intermediateCA.crt.pem -CAkey intermediate\private\intermediateCA.key.pem -CAcreateserial -out certs\server.crt.pem -days 825 -sha256

## Issuing a self signed certificate
```cmd
openssl req -x509 -newkey rsa:4096 -days 3650 -keyout RootCA.key -out RootCA.crt -subj "/C=IN/ST=Uttarakhand/L=Haldwani/O=ExampleOrg/CN=ExampleOrg Root CA" -addext "keyUsage = cRLSign, keyCertSign"
```
## Reading the certificate
```cmd
openssl x509 --in RootCA.crt --text
```

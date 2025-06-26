# 🛡️ Educational Certificate Authority (CA) Setup with OpenSSL

This repository contains a complete setup for creating a basic Root CA, Intermediate CA, and issuing server certificates using OpenSSL.

---
## Introduction
This contains a list of commands in order to locally create a CA with a chain of trust structure. It is created to with the structure of actual CAs in mind.

## ⚠️ Disclaimer

> This repository is intended **for educational purposes only**.  
> Please **do not install or trust any of the included certificates** in real-world applications.  
> The **CA private keys are intentionally included** (or generated) to demonstrate the structure and functionality of certificate generation.  
> Never use these keys in production environments or with sensitive data.

You are encouraged to explore the repository and examine the various files that make up the core components of a working Certificate Authority.

---

## 🏗️ Folder Structure

- `root/`: Root CA files and configuration
- `intermediate/`: Intermediate CA files and configuration
- `certs/`: End-entity/server certificates
- `.bat` scripts: Automate CA setup and certificate issuance

---

## 🔧 How to Use (Windows CMD)

> Open Command Prompt in the root folder of this repo and run the following in order:

### 1. Create Root CA
```cmd
create_root_ca.bat
```
### 2. Create Intermediate CA
```cmd
create_intermediate_ca.bat
```
### 3. Create Server Certificate
```cmd
create_server_cert.bat
```

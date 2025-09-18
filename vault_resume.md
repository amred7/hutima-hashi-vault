
# HashiCorp Vault Summary

## Overview
Vault is a tool for securely accessing secrets such as API keys, passwords, certificates, and encryption keys. It provides a unified interface to manage secrets and protect sensitive data using identity-based access.

---

## Core Concepts

### 1. Secrets Management
- **Static Secrets**: Stored and retrieved as-is (e.g., database credentials).
- **Dynamic Secrets**: Generated on-demand and expire automatically (e.g., AWS credentials, database logins).

### 2. Encryption as a Service
- Vault can encrypt/decrypt data without storing it, using **transit secrets engine**.

### 3. Identity-Based Access
- Uses **policies** and **authentication methods** to control access to secrets.

---

## Architecture Components

### 1. Vault Server
- Central service that handles requests, manages secrets, and enforces policies.

### 2. Storage Backend
- Persists Vault’s data (e.g., Consul, file system, AWS S3).

### 3. Seal/Unseal Process
- Vault starts in a sealed state. Requires **unseal keys** to decrypt the master key.
- Supports **Shamir’s Secret Sharing** for key distribution.

### 4. Authentication Methods
- **Token** (default)
- **AppRole**
- **Userpass**
- **LDAP**
- **OIDC**
- **AWS/GCP/Azure IAM**

---

## Secrets Engines
Each engine is mounted at a path and handles a specific type of secret:

- **KV (Key-Value)**: Stores arbitrary secrets.
- **Database**: Generates dynamic DB credentials.
- **AWS/GCP/Azure**: Generates cloud credentials.
- **Transit**: Encrypts/decrypts data.
- **PKI**: Issues and manages TLS certificates.
- **SSH**: Issues one-time SSH credentials.

---

## Policies and Access Control
- Written in **HCL (HashiCorp Configuration Language)**.
- Define what actions are allowed on which paths.
- Attached to tokens, roles, or entities.

---

## Audit Devices
- Logs all requests and responses for security and compliance.
- Can be sent to files, syslog, or external services.

---

## Enterprise Features (Vault Enterprise)
- **Namespaces**: Multi-tenancy support.
- **Replication**: Performance and disaster recovery replication.
- **Advanced Governance**: Sentinel policies.
- **HSM Integration**: Hardware Security Module support.

---

## Use Cases
- Secure storage of secrets.
- Dynamic secrets for cloud and databases.
- Encryption as a service.
- Certificate management.
- Secure access to infrastructure.

---

## CLI and API
- Vault provides a powerful **CLI** and **HTTP API** for automation and integration.

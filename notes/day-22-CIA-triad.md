# 🔐 CIA Triad: Threats & Protections

C – Confidentiality (protecting data from unauthorized access)

I – Integrity (ensuring data is accurate and not tampered with)

A – Availability (ensuring systems and data are accessible when needed)

###  1. Confidentiality
Goal: Only authorized people should access the data.

### *Threats to Confidentiality*

Data Breach → attackers steal private data

Unauthorized Access → weak passwords, stolen credentials

Phishing → attackers trick users to reveal credentials

Eavesdropping/Sniffing → unencrypted network traffic

Misconfigured cloud storage → open S3 buckets, exposed databases

Malware (keyloggers) → steals usernames & passwords

### *Protections for Confidentiality*

Encryption (at rest & in transit) – e.g., HTTPS, TLS

Access Control – RBAC, least privilege

Strong Authentication – MFA, password managers

Network Segmentation – VLANs, firewalls

Data Classification policies – public/internal/confidential

Secure configuration – disable public database access

Security Awareness Training – reduces phishing success

### 2. Integrity
Goal:  Data must remain accurate, unchanged, and trustworthy.

### *Threats to Integrity*

Tampering or Manipulation of files or logs

Man-in-the-Middle (MITM) → attackers alter data in transit

Malware → ransomware modifies or encrypts files

SQL Injection → attacker changes database records

Corruption → system errors, storage failure

Insider threats → employees editing records maliciously

### *Protections for Integrity*

Hashing – SHA-256 to verify file integrity

Digital Signatures – assures authenticity

Input Validation – prevents SQL injection

Version Control – track changes

Immutable logs – SIEM, write-once storage

Backups – allow you to restore correct data

Checksums – detect corruption

MITM protection – TLS certificates, HSTS

 ### 3. Availability
Goal:  Systems, data, and services must be available when authorized users need them.

### *Threats to Availability*

DDoS Attacks → floods servers to make them unavailable

Ransomware → encrypts data & stops operations

Power Outages / Hardware Failure

Natural Disasters – floods, fire, etc.

Server Misconfigurations causing downtime

Resource Exhaustion → CPU, RAM, storage overload

### *Protections for Availability*

Redundancy – multiple servers, load balancers, failover systems

Backups & Disaster Recovery plans

DDoS Protection – Cloudflare, AWS Shield

Patch Management – prevents crashes from vulnerabilities

High Availability Architecture – clustering, replication

Uninterruptible Power Supplies (UPS)

Monitoring tools – SIEM, uptime monitors



| CIA Pillar          | Threats                                           | Protections                                    |
| ------------------- | ------------------------------------------------- | ---------------------------------------------- |
| **Confidentiality** | Unauthorized access, phishing, sniffing, breaches | Encryption, MFA, Access control, Firewalls     |
| **Integrity**       | MITM, SQLi, tampering, malware                    | Hashes, signatures, input validation, backups  |
| **Availability**    | DDoS, ransomware, outages                         | Redundancy, DR plans, DDoS protection, updates |


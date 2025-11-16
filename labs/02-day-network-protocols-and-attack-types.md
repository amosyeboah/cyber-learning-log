# 🛡️ SOC Analyst Real-World Case Studies

This document presents real-world SOC scenarios based on common network protocols and the alerts they generate. 
Each scenario includes background, sample SIEM logs, investigation steps, and remediation actions — reflecting how SOC analysts work in production environments.

## 🔥 Scenario 1: HTTP/HTTPS – Malware Command & Control (C2) Communication
Overview

A compromised workstation begins sending unusual outbound HTTPS traffic to an unknown IP. This often indicates malware beaconing or data exfiltration.

#### Sample SIEM Alert

Alert: Suspicious High-Volume HTTPS Traffic
Source Host: WIN-10-WS01 (10.0.5.22)
Destination IP: 185.203.44.10
Bytes Sent: 5.6GB in 10 minutes
Domain: hxxp://update-system-check.com
Port: 443

#### Investigation Steps

Check IP/domain reputation → Marked as malicious (C2).

Validate whether the traffic is user-initiated → No.

Check EDR logs → Beaconing every 30 seconds.

Run AV/malware scan.

#### Response & Remediation

Immediately isolate the host from the network.

Block IP/domain at firewall.

Conduct memory and forensic analysis.

Reset credentials used on the device.

Update firewall rules & IDS signatures.

# 🔥 Scenario 2: DNS (Port 53) – DNS Tunneling & Data Exfiltration
Overview

DNS tunneling allows attackers to send data inside DNS queries. This is commonly used for stealthy exfiltration.

#### Sample SIEM Alert
Alert: Abnormal DNS Query Length
Client: 10.0.8.12
Query: ZGF0YV9leGZpbHRyYXRlCg==.example.com
Frequency: 120 queries/minute

#### Investigation Steps

Identify unusually long or encoded DNS queries.

Check frequency of queries → abnormally high.

Review EDR logs for suspicious processes.

Validate whether DNS traffic is bypassing internal resolvers.

#### Response & Remediation

Block outbound DNS queries to unknown resolvers.

Force all DNS through corporate DNS servers.

Quarantine device and scan for malware.

Add detection rules for DNS tunneling.

# 🔥 Scenario 3: SMTP (25/587) – Compromised Email Account Sending Spam
Overview

A user account is compromised and used to send large volumes of outbound emails, often for phishing or spam campaigns.

Sample SIEM Alert
Alert: SMTP Outbound Spike
User: user@company.com
Port: 587
Emails Sent: 2432 in 20 minutes
IP: 10.0.7.14

#### Investigation Steps

Check login history → Impossible travel detected.

Review mailbox rules for auto-forwarding or deletion.

Analyze outbound emails for phishing indicators.

#### Response & Remediation

Disable user account & force password reset.

Remove malicious inbox rules.

Enable or enforce MFA for the user.

Notify affected recipients if spam was sent externally.

Monitor for repeated login attempts.

# 🔥 Scenario 4: SSH (22) – Brute-Force Attack on Linux Server
Overview

An external attacker attempts thousands of login attempts on a Linux server via SSH to gain unauthorized access.

Sample SIEM Alert
Alert: SSH Brute-Force Attempt
Source IP: 103.218.44.19
Target Host: ubuntu-prod-01
Failed Attempts: 3400 in 15 mins
Port: 22

#### Investigation Steps

Check if any login attempts were successful.

Review server authentication logs (/var/log/auth.log).

Analyze source IPs for distributed attacks.

Look for password-spray patterns.

#### Response & Remediation

Block offending IPs.

Implement fail2ban or rate limiting on SSH.

Disable password login → enforce key-based authentication.

Move SSH service to a non-standard port.

Audit accounts with weak passwords.

# 🔥 Scenario 5: RDP (3389) – Successful RDP Brute-Force Leading to Compromise
Overview

An attacker brute-forces RDP credentials, logs in remotely, and begins lateral movement — a common precursor to ransomware.

Sample SIEM Alert
Alert: Successful RDP Login from Foreign IP
User: administrator
Source IP: 188.23.42.10
Target Host: DC-01
Port: 3389

#### Investigation Steps

Confirm if login was legitimate → Not expected.

Check for privilege escalation or new account creation.

Look for signs of lateral movement (SMB, remote PowerShell).

Review ransomware indicators (file renaming, shadow copies deletion).

#### Response & Remediation

Immediately isolate compromised host.

Reset admin passwords across the domain.

Disable RDP exposure to the internet.

Enforce VPN + MFA for remote access.

Conduct full IR investigation.

# 🔥 Scenario 6: FTP (20/21) – Anonymous FTP Login Allowing Malicious Uploads
Overview

An FTP server with anonymous login enabled is used by attackers to upload malicious scripts or malware.

Sample SIEM Alert
Alert: Anonymous FTP Login Detected
Server: ftp-public-01
Files Uploaded: 7
IP: 45.12.67.33
Port: 21

#### Investigation Steps

Review uploaded files → suspicious scripts.

Check FTP server logs for previous misuse.

Identify whether the attacker attempted directory traversal.

#### Response & Remediation

Disable anonymous FTP access completely.

Remove uploaded files and scan server.

Migrate to SFTP (over SSH).

Harden server configuration.

# 🔥 Scenario 10: DHCP (67/68) – Rogue DHCP Server on the Network
Overview

A rogue DHCP server can assign malicious gateways and DNS servers to redirect user traffic.

Sample SIEM Alert
Alert: Multiple DHCP Servers Detected
Authorized DHCP: 10.0.0.5
Rogue DHCP: 10.0.9.88
Port: 67/68

#### Investigation Steps

Identify the physical device via switch port mapping.

Check for MAC address and location.

Determine if it’s malicious or a user-installed router.

#### Response & Remediation

Immediately disconnect the rogue device.

Reassign correct IP settings to affected hosts.

Implement DHCP snooping on network switches.

Document incident & update policies.

# ✅ Conclusion

These scenarios simulate real SOC analyst cases involving common protocols and ports. 
They demonstrate alert analysis, log interpretation, threat detection, and incident response workflows — essential for cybersecurity portfolios and practical SOC experience.

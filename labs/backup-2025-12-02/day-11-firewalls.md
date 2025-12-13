# 🔥 FIREWALLS — CYBERSECURITY BASICS (Beginner-Friendly Notes)
📌 1. What Is a Firewall?

A firewall is a security system (hardware or software) that monitors and controls incoming and outgoing network traffic based on defined rules.
It acts like a security gate, deciding which traffic to allow, block, or inspect.

📌 2. Why Firewalls Matter in Cybersecurity

Firewalls help protect:

Internal networks

Endpoints (PCs, servers)

Cloud systems

Applications

They prevent:

Unauthorized access

Malware communication

Data leakage

Network attacks (scanning, exploitation)

🔥 3. Types of Firewalls
3.1 Packet-Filtering Firewall (Layer 3 / Layer 4)

Checks IPs, ports, protocols

Very fast

Basic level of protection

Example rule:

Block all inbound traffic on port 22 (SSH).

3.2 Stateful Firewall

Understands active connections

Allows return traffic automatically

More secure than packet-filtering

3.3 Proxy Firewall (Application Layer, Layer 7)

Intercepts traffic between user and server

Performs deep inspection

Good for controlling HTTP, DNS, SMTP traffic

3.4 Next-Generation Firewall (NGFW)

Advanced modern firewall that includes:

Deep Packet Inspection (DPI)

Intrusion Detection & Prevention (IDS/IPS)

Application control (e.g., block TikTok)

Threat intelligence integration

Examples: Palo Alto, FortiGate, Cisco Firepower.

🔥 4. What a Firewall Checks

Firewalls analyze:

Source IP

Destination IP

Source/Destination Port

Protocol (TCP, UDP, ICMP)

Packet state (NEW, ESTABLISHED)

Application type (HTTP, DNS, SMTP)

Traffic content (in NGFW)

🔥 5. Firewall Rules — How They Work

### A firewall rule typically includes:

Action	Source	Destination	  Port	  Protocol	Description

ALLOW  	10.0.1.5	  8.8.8.8	  53  	  UDP	    Allow DNS queries

DENY	  ANY	Server-Subnet	    22	    TCP	  Block external SSH

ALLOW	Admin-Subnet	10.0.0.2	443	TCP	Allow HTTPS to app server

### 🔥 6. SOC Analyst Real-World Scenarios
### Scenario 1 — Blocking a Malicious IP

Threat intel reports a malicious scanning IP:
185.223.95.66

Firewall action:

Block inbound traffic from that IP.

### Scenario 2 — Restricting SSH Access

SSH should be accessible only by internal admins.
Rule:

Allow SSH only from 10.0.0.15 (Admin PC).
Deny everyone else.

### Scenario 3 — Preventing Data Exfiltration

An infected machine attempts to send files to an unknown server.
Firewall rule:

Deny outbound traffic to unknown external IP ranges.

Stops the data leak immediately.

### Scenario 4 — Blocking Risky Applications

Company wants to block unproductive or risky apps.
NGFW example:

Block Facebook traffic
Block TikTok traffic
Block unauthorized VPNs

### Scenario 5 — Detecting Malware Command & Control (C2)

A host contacts a known malware C2 server.
NGFW/IPS blocks and alerts SOC.
SOC then isolates the host.

### Scenario 6 — Limiting ICMP (Ping)

Ping can be used for reconnaissance and DoS attacks.
Rule:

Allow ICMP internally,
Block ICMP from the internet.

### 🔥 7. Diagram — Firewall Traffic Flow (Simple)
Internet  --->  [ Firewall ]  --->  Internal Network
                  |
           Allow / Deny / Inspect

### 🔥 8. Key Takeaways

Firewalls enforce access control and protect the network perimeter.

Stateful and NGFW are the modern standard.

Proper firewall rules prevent many cyber attacks.

SOC analysts monitor and respond to firewall alerts daily.


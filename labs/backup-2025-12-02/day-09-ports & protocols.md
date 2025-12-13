# Ports and Protocols
1. computer ports these are the physical like;  USB, HDMI, Thunderbolt, or network ports (Ethernet)
2. network ports - these are software like ports 80, 443

Here we are talking about network or software ports not the physical ports in computers

# PORTS
A newtwork ports is a virtual connection points identified by numbers.
A network ports uses it identifies (numbers) to directs data to a specific application or process on a device.
A port is always paired with ip address to form a complete destination for a network packet.
for example; 192.168.1.1:80 

### common known ports
20/21 - FTP,
22 - SSH / SFTP,
23 - Telnet,
25 - SMTP,
53 - DNS,
80 - HTTP,
443 - HTTPS,
110  - POP3,
3000 - localhost,
8080 - web testing

### Port states
1. Open ports
2. closed ports
3. filtred

# Practice ' netstat, ss'.
Network administrators and users rely on tools like *netstat* and *ss* to gain visibility into network activity for the purposes of troubleshooting, performance monitoring, and security. 
These tools serve several critical functions:

Monitoring Connections: They display a snapshot of all active network connections (both inbound and outbound) to the system, allowing users to see what remote machines their computer is communicating with.

Identifying Open Ports/Services: You can see which ports on the system are in a LISTEN state and which services or applications are using them. This is crucial for verifying that network services (like a web server on port 80 or SSH on port 22) are running correctly or for detecting unauthorized services.

Troubleshooting Network Issues: By examining connection states (e.g., ESTABLISHED, SYN_SENT, TIME_WAIT), administrators can diagnose common problems like connection floods, network congestion, or application errors that prevent connections from closing properly.

Security Auditing: Security professionals use these commands to spot suspicious network activity, such as unexpected connections to unknown IP addresses or unusual port usage, which could indicate malware or an intrusion attempt.
 
Process Association: They can link a network connection back to a specific Process ID (PID) and application name, allowing administrators to pinpoint exactly which program is responsible for network traffic.



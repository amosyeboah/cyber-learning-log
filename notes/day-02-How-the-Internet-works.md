# Day 2 - How the Internet Works

## What I Learned Today
1. What happens when you typed example.com in a browser
2. IP address
3. Packets
4. Protocols
5. Practising using; ping, tracert, whois.

## Answers
### Your request - DNS lookup - IP address - Server response - Data Transfer - Packet switching - Reassembly
When a user typed www.example.com in a web browser, the browser checks the DNS cache if it already knows the IP,
if not it sends or request for the IP address associated with (www.example.com), FROM the DNS servers.
Once the browser (your computer) have the IP it now send a request for that particular websites (www.example.com) files.
The server response: The web server recieves the request from your PC, the server retrieves the neccessary files 
(HTML,images, etc), breaks them down into smaller packets and sends them back to your PC. Each packet is routed 
independently through the network. The packets are reassembled at the recieving end and the data is displayed
on your browser.

## IP address
An IP address is a unique number assigned to every device on a network. 
It helps identify devices and locate them on a network.
#### Two versions: IPv4 and IPv6
IPv4: e.g., 192.168.1.1 (32-bit, most common)
IPv6: e.g., 2001:db8::1 (128-bit, newer, many more addresses)

#### Public vs. Private IP
Public IP: Assigned by your internet provider; used on the internet.
Private IP: Used inside your home or local network (e.g., your router assigns these).

#### Static vs. Dynamic IP:
Static IP: Remains constant. 
Typically used for servers, websites, or devices that need a fixed address.

Dynamic IP: Changes periodically.
Assigned automatically by DHCP (Dynamic Host Configuration Protocol) for most personal devices.
#### IP Address Assignment:
DHCP (Dynamic Host Configuration Protocol): Automatically assigns a dynamic IP to devices on a network.
Manual/Static Assignment: Network administrators set static IPs manually.

#### Why IP Addresses Matter
They allow devices to:
Connect to the internet
Send/receive data
Be uniquely identifiable on networks


### Data Packets
Data packets are said to be a unit of data that are transmittes on a network.
#### 1.Header 2.Payload 3.Footer/Tail
#### Fragmentation: 
In fragementation large data is split into smaller packets
#### Transmission:  
In transmission data packets are through diff path on a network
#### Reassembly:  
When data packets reach their destination they are reassembled in the correct order of sequence, using their sequence number


#### Protocols : Protocols are the standardized rules in data communication.
#### common Protocols: Http, Https, dns, tcp/ip, tcp, udp, icmp, ssh, telnet, arp etc.
Http-80, Https-443, dns-53, ftp-21, sftp-22, ssh-22, telnet-23, dhcp-67



## Pracctice 
#### ping
In networking, ping is a simple diagnostic tool used to test whether one device can reach another over a network (like the internet or a local network).

#### How ping works

Your device sends a small packet called an ICMP Echo Request to a target IP address or domain.
If the target is reachable, it replies with an ICMP Echo Reply.
Your computer measures how long it took to get the reply.

#### What ping tells you

#### Connectivity
If you get replies, the device is reachable.
If you get “Request timed out,” it might be offline, blocked, or unreachable.

#### Latency (response time)
Measured in milliseconds (ms).
Lower is better (e.g., 10–30 ms is fast; 200 ms+ is slow).

#### Packet loss
If some pings never come back, the network might be congested or unstable.

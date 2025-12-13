# DHCP and NAT
DHCP automatically assign IP address to devices.
NAT translate ip address of devices on a private network to a single public ip address.

DHCP
Function: A DHCP server dynamically assigns a unique private IP address, subnet mask, default gateway (router address), and DNS server information to each device (client) that connects to the network.

Purpose: It simplifies network administration by eliminating the need for manual IP address configuration, which is prone to errors and conflicts. 

Location: The DHCP server typically runs on the local router or a dedicated server within the private network.


Network Address Translation (NAT)
NAT is a process that operates on a router to translate private IP addresses into a single (or a few) public IP addresses before traffic is forwarded to the internet. 

### Function: It modifies the source IP address and port number in outgoing data packets from internal devices to the router's public IP address, and reverses the process for incoming response packets.

### Purpose:
IP Address Conservation: It was originally developed as a solution to the shortage of IPv4 public addresses by allowing many private devices to share a single public IP.

Security: It adds a layer of security by hiding the internal network's structure and individual private IP addresses from the public internet.

Process: The router maintains a NAT table to keep track of which internal private IP and port corresponds to which external public IP and port for each active connection. 


### How They Work Together (DHCP and NAT)
In a typical home or office network, DHCP and NAT work seamlessly on the same router: 
A device connects to the network and uses DHCP to automatically obtain a private IP address (e.g., 192.168.1.10).
When the device sends data to the internet, the router uses NAT to replace the private source IP address with its single public IP address, recording this translation in its NAT table.

When the internet server responds, the router uses the NAT table entry to forward the response to the correct internal device with the private IP address. 

### In essence, DHCP ensures every internal device has a valid "local" address, and NAT ensures all those devices can use the single "public" internet connection simultaneously and securely.

# How IP address are assigned. (Global IP address and Private IP address Assignment)
### Global IP Address Management
The overall global distribution of public IP addresses is managed through a hierarchical system.

IANA: The Internet Assigned Numbers Authority (IANA) is at the top of the hierarchy and coordinates the global pool of IP addresses.

RIRs: IANA allocates large blocks of IP addresses to five Regional Internet Registries (RIRs) based on geographic regions (e.g., ARIN for North America, RIPE NCC for Europe).

ISPs/LIRs: The RIRs further assign smaller blocks to Internet Service Providers (ISPs) and Local Internet Registries (LIRs), who then assign these addresses to individual customers and organizations. 

### Local IP Address Management
Within a private network (like a home or office LAN), IP addresses are typically assigned in one of two ways: 
### 1. Dynamic IP Assignment (DHCP) 
This is the most common method.
Benefit: This method is efficient, reduces administrative workload, and minimizes the chance of IP address conflicts on the network. 

### 2. Static IP Assignment 
This method involves manual configuration and is typically used for devices that need a permanent, unchanging address. 
*Process:* A network administrator manually enters the IP address, subnet mask, default gateway.

## Private and Public IPs
Private IP Addresses

Purpose: Used for communication within a private network (e.g., home, office LAN).

Accessibility: Not routable or accessible from the public internet.

Assignment: Assigned by a local DHCP server (router) or manually configured.

### Reserved Ranges: IANA reserves specific ranges for private use, primarily 192.168.x.x, 10.x.x.x, and 172.16.x.x through 172.31.x.x. 

Public IP Addresses

Purpose: Used for communication over the public internet.

Accessibility: Globally routable and accessible from any internet-connected device.

Assignment: Assigned by an Internet Service Provider (ISP) to your router/gateway.

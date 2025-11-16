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



## Pracctice 

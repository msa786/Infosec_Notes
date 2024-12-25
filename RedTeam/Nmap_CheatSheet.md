**Nmap Cheat Sheet for OSCP Exams**

**Basic Usage**

* **Syntax:** `nmap [options] <target>`
* **Target:** Can be an IP address, hostname, subnet, or range.
* **Options:** Modify scan behavior.

**Common Options**

* **-sL:** List scan (only lists targets)
* **-sn:** Ping scan (host discovery only)
* **-Pn:** Treat all hosts as online (skip host discovery)
* **-sT:** TCP Connect scan (default)
* **-sS:** TCP SYN Scan (stealthier)
* **-sU:** UDP Scan
* **-sC:** Default script scan
* **-sV:** Service and version detection
* **-O:** Operating system detection
* **-A:** Aggressive scan (combines -sC -sV -O)
* **-p <port>:** Specify port(s) to scan (e.g., `-p 22`, `-p 21-25`, `-p 1-1024`)
* **-F:** Fast scan (top 100 ports)
* **-P0:** Don't ping before scanning
* **-T <speed>:** Set timing template (e.g., `-T4` for intense scan)
* **-oN <file>:** Save output to normal format
* **-oX <file>:** Save output to XML format
* **-oG <file>:** Save output to Grepable format

**NSE Scripting**

* **-sC:** Run default scripts
* **--script <script>:** Run a specific script
* **--script-args <args>:** Pass arguments to scripts

**Example Commands**

* **Basic scan:** `nmap 192.168.1.100`
* **SYN scan:** `nmap -sS 192.168.1.100`
* **Scan top 1000 ports:** `nmap -p 1-1000 192.168.1.100`
* **Service and version detection:** `nmap -sV 192.168.1.100`
* **Operating system detection:** `nmap -O 192.168.1.100`
* **Aggressive scan:** `nmap -A 192.168.1.100`
* **Run a specific script:** `nmap --script http-title 192.168.1.100`

**Tips for OSCP Exams**

* **Practice:** The more you use Nmap, the better you'll understand its capabilities.
* **Read the documentation:** Nmap's documentation is extensive and covers all aspects of the tool.
* **Understand the output:** Learn to interpret Nmap's output to identify open ports, services, and vulnerabilities.
* **Use NSE scripts:** Leverage the power of NSE scripts to gather additional information.
* **Be aware of ethical considerations:** Always obtain proper authorization before scanning any systems.

**Disclaimer:** This cheat sheet is for educational purposes only. Use Nmap responsibly and ethically. Unauthorized scanning can have legal consequences.

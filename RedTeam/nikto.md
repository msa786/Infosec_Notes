### **Nikto: Overview, Commands, and Use Cases**

**What is Nikto?**

Nikto is an open-source web server scanner used for detecting vulnerabilities in web applications. It is a powerful tool for identifying potential security flaws on a website or web server, including issues like outdated software versions, misconfigurations, and exposed sensitive information. It performs a comprehensive scan by sending various requests to the web server and analyzing the responses to detect issues.

### **Key Features of Nikto:**
- **Web Vulnerability Scanning**: Nikto scans for over 6700 vulnerabilities and can detect outdated versions of web server software, CGI scripts, and more.
- **Supports SSL/TLS**: Nikto can scan HTTPS servers as well as HTTP servers.
- **Plugin Support**: It includes support for third-party plugins for more customized scanning.
- **Comprehensive Reports**: It can generate output in multiple formats like plain text, HTML, XML, and CSV.

### **Common Use Cases of Nikto:**
1. **Vulnerability Assessment**: Nikto is used to identify common vulnerabilities in web applications, such as SQL injection points, cross-site scripting (XSS), open directories, and information leaks.
2. **Configuration Auditing**: It checks if web servers have common misconfigurations, such as default settings or insecure permissions.
3. **Penetration Testing**: Nikto is part of the penetration testing toolkit and helps identify security weaknesses in web servers during a security assessment.
4. **Compliance Testing**: Nikto can be used to check web servers against security best practices and compliance standards.

---

### **Nikto Command Line Syntax:**

The basic syntax for running Nikto is:

```bash
nikto -h <target>
```

Where `<target>` can be an IP address, a domain name, or a URL of the web server you want to scan.

---

### **Common Nikto Commands and Options:**

Here are some of the most commonly used commands and options in Nikto, with their descriptions and use cases:

#### 1. **Basic Scan**:
The simplest way to run a scan is by specifying the target:

```bash
nikto -h <target>
```
- **Use Case**: A basic scan to detect vulnerabilities on a web server. This checks for various issues such as outdated software, exposed files, misconfigurations, and more.
- **Example**: `nikto -h http://example.com`

#### 2. **Scan a Specific Port**:
By default, Nikto scans port 80 for HTTP or port 443 for HTTPS. You can specify a different port using the `-p` option:

```bash
nikto -h <target> -p <port>
```
- **Use Case**: Scanning a web server on a non-default port (e.g., 8080, 9000).
- **Example**: `nikto -h http://example.com -p 8080`

#### 3. **Scan HTTPS Servers**:
If the server uses HTTPS, you can specify the `-ssl` option or use an `https://` URL directly:

```bash
nikto -h https://<target>
```
- **Use Case**: Scanning a web server that uses SSL/TLS (HTTPS).
- **Example**: `nikto -h https://example.com`

#### 4. **Scan Multiple Targets (IP Range or Subnet)**:
Nikto allows you to scan multiple hosts in a network by specifying an IP range or subnet.

```bash
nikto -h <IP_range>
```
- **Use Case**: Scanning a range of IP addresses or an entire subnet.
- **Example**: `nikto -h 192.168.1.1-100`

#### 5. **Output Formats**:
Nikto can generate output in various formats like HTML, XML, CSV, and plain text. You can specify the output format using the `-o` option.

```bash
nikto -h <target> -o <output_file> -Format <output_format>
```
- **Use Case**: Saving the scan results in different formats for reporting or further analysis.
- **Example**: `nikto -h http://example.com -o results.html -Format htm`

Supported formats for `-Format`:
- `txt`: Plain text (default).
- `xml`: XML format.
- `csv`: Comma-separated values (for easy import into spreadsheets).
- `htm`: HTML format (for easy viewing in browsers).

#### 6. **Scan Specific Plugins**:
Nikto supports plugins that can be enabled or disabled. You can specify the plugin to use by the `-Plugins` option.

```bash
nikto -h <target> -Plugins <plugin_name>
```
- **Use Case**: Customizing the scan to include specific checks based on your requirements.
- **Example**: `nikto -h http://example.com -Plugins checkxss`

#### 7. **Check for Specific Vulnerabilities**:
Nikto provides various checks, such as checking for specific vulnerability types (e.g., XSS, SQL injection). You can specify these checks using flags like `-Check`:

```bash
nikto -h <target> -Check <vulnerability_name>
```
- **Use Case**: To search for specific vulnerabilities within the web server.
- **Example**: `nikto -h http://example.com -Check xss`

#### 8. **Authentication Support**:
Nikto can be configured to perform authenticated scans by providing login credentials using the `-auth` option. This is helpful for scanning protected areas of a website.

```bash
nikto -h <target> -auth <username>:<password>
```
- **Use Case**: Scanning web servers or applications that require authentication.
- **Example**: `nikto -h http://example.com -auth admin:password123`

#### 9. **Enable SSL/TLS Cipher Testing**:
If you are testing SSL/TLS configurations, you can enable SSL/TLS cipher suite testing:

```bash
nikto -h <target> -ssl
```
- **Use Case**: Testing SSL/TLS configurations and ensuring secure ciphers are being used.
- **Example**: `nikto -h https://example.com -ssl`

#### 10. **User-Agent Customization**:
You can customize the user-agent string Nikto uses when sending requests to the server, which can help simulate different browsers or devices.

```bash
nikto -h <target> -useragent "<user_agent_string>"
```
- **Use Case**: Bypassing security measures or testing how the server responds to different user agents.
- **Example**: `nikto -h http://example.com -useragent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"`

#### 11. **Advanced Command Options**:

- **Scan for Multiple Hosts with Proxy**: You can route traffic through a proxy using the `-proxy` option.
  
  ```bash
  nikto -h <target> -proxy http://<proxy_host>:<proxy_port>
  ```

- **Show Detailed Scan Output**: By default, Nikto shows a summary of results. You can use the `-display` option to show more detailed information.

  ```bash
  nikto -h <target> -display all
  ```

---

### **Nikto Command Summary Table**:

| Command Option    | Description                                                       | Example Command                                                      |
|-------------------|-------------------------------------------------------------------|----------------------------------------------------------------------|
| `-h <target>`      | Specify the target (IP address, domain, or URL)                   | `nikto -h http://example.com`                                         |
| `-p <port>`        | Specify a custom port to scan                                      | `nikto -h http://example.com -p 8080`                                |
| `-ssl`             | Scan HTTPS servers (default port 443)                             | `nikto -h https://example.com`                                        |
| `-o <file>`        | Output scan results to a file                                      | `nikto -h http://example.com -o result.html -Format htm`              |
| `-Format <format>` | Specify the output format (txt, xml, csv, htm)                    | `nikto -h http://example.com -o result.xml -Format xml`               |
| `-Check <check>`   | Scan for a specific vulnerability check (e.g., XSS, SQLi)         | `nikto -h http://example.com -Check xss`                              |
| `-auth <user:pass>`| Provide authentication credentials                                | `nikto -h http://example.com -auth admin:password123`                 |
| `-useragent <ua>`  | Customize the User-Agent string used in the request                | `nikto -h http://example.com -useragent "Mozilla/5.0"`                |
| `-proxy <proxy>`   | Route traffic through a proxy                                     | `nikto -h http://example.com -proxy http://proxy.example.com:8080`    |
| `-display all`     | Display detailed results (more verbose output)                     | `nikto -h http://example.com -display all`                            |

---

### **Use Case Examples**:

1. **Scan for vulnerabilities on a web server**:
   ```bash
   nikto -h http://example.com
   ```
   This scans the target `example.com` for common vulnerabilities.

2. **Scan a web server on a non-standard port**:
   ```bash
   nikto -h http://example.com -p 8080
   ```
   This scans `example.com` on port 8080.

3. **Scan an HTTPS website and output results in HTML**:
   ```bash
   nikto -h https://example.com -o result.html -Format htm
   ```
   This performs an SSL scan and saves the results in an HTML file.

4. **Scan a site with authentication**:
   ```bash
   nikto -h http://example.com -auth admin:password123
   ```
   This uses the provided authentication credentials to scan a protected area of the site.

---

### **Summary**:

- **Nikto** is a comprehensive web server scanner that helps identify common vulnerabilities, misconfigurations, and outdated software.
- It is highly customizable, allowing users to choose specific ports, vulnerabilities, and scan formats.
- Useful for **penetration testing**, **vulnerability assessments**, and **security audits**, Nikto plays a crucial role in identifying web application security risks.


**Nikto: A Powerful Web Server Scanner**

Nikto is a free and open-source web server scanner that automates the process of checking web servers for several items, including:

* **Dangerous files and programs:** Nikto can detect the presence of potentially harmful files, such as default scripts, configuration files, and outdated software.
* **Server configuration issues:** Nikto can identify misconfigurations in web servers, such as open directories, weak passwords, and outdated software.
* **Server software and versions:** Nikto can identify the type and version of web server software running on a target system.

**Key Commands and Use Cases**

Here are some common Nikto commands and their use cases:

1. **Basic Scan:**

   ```bash
   nikto -h <target_host>
   ```

   * This command performs a basic scan of the specified target host.
   * It checks for common vulnerabilities and misconfigurations.

2. **Scan with Options:**

   ```bash
   nikto -h <target_host> -o <output_file> -Tuning <tuning_profile> -Plugins <plugin_list>
   ```

   * `-o <output_file>`: Specifies the output file for the scan results.
   * `-Tuning <tuning_profile>`: Selects a predefined tuning profile for the scan.
   * `-Plugins <plugin_list>`: Specifies a list of plugins to use during the scan.

3. **Vulnerability Scanning:**

   ```bash
   nikto -h <target_host> -Format html -Plugins 1,2,3 
   ```

   * This command scans the target host for specific vulnerabilities listed in plugins 1, 2, and 3.
   * The `-Format html` option generates an HTML report of the scan results.

4. **Server Information Gathering:**

   ```bash
   nikto -h <target_host> -Display ServerInfo 
   ```

   * This command gathers information about the target server, such as the server type, version, and operating system.

5. **Customizing the Scan:**

   ```bash
   nikto -h <target_host> -ExcludeCode 404,500 -Useragent "MyCustomUserAgent" 
   ```

   * `-ExcludeCode 404,500`: Excludes HTTP status codes 404 and 500 from the scan results.
   * `-Useragent "MyCustomUserAgent"`: Sets a custom User-Agent header for the scan.

**Additional Tips:**

* **Regular Updates:** Keep Nikto updated with the latest plugin definitions to ensure accurate and comprehensive scanning.
* **Ethical Usage:** Use Nikto responsibly and only on systems that you have permission to scan.
* **False Positives:** Be aware that Nikto may generate false positives. Manually verify any potential issues.

By understanding these commands and use cases, you can effectively leverage Nikto to identify and address security vulnerabilities in web servers.
 
**Would you like to delve deeper into a specific command or use case?**

🔍 IP Information Gathering Tool

🚀 Overview

IP Information Gathering Tool is a powerful and efficient script that helps you retrieve detailed information about an IP address using multiple sources. It gathers:

🔹 Geolocation Data – City, Region, Country🔹 Hostname Lookup – Resolves the hostname of the IP🔹 WHOIS Information – Fetches domain/IP registration details🔹 DNS Records – Retrieves associated DNS records🔹 Traceroute Analysis – Maps the route taken by packets to the IP

🎯 Usage

Run the script interactively:

./ip_info_tool.sh

Or provide an IP address directly:

./ip_info_tool.sh 8.8.8.8

Example Output:

🔍 Gathering information for IP: 8.8.8.8
📡 Hostname: dns.google

🌍 Geolocation:
    {
      "ip": "8.8.8.8",
      "city": "Mountain View",
      "region": "California",
      "country": "US"
    }
...

✨ Features

✅ Fetches IP details from multiple reliable sources✅ Validates IP address input to prevent errors✅ Automatically checks for required dependencies✅ Supports both interactive and command-line modes✅ Provides a well-structured, easy-to-read output

📦 Installation

1️⃣ Install Required Dependencies

Ensure your system has the necessary tools installed:

🖧 host

🌍 curl

📜 whois

🔗 dig

🛤 traceroute

On Debian-based systems, install missing dependencies:

sudo apt update && sudo apt install dnsutils whois curl traceroute -y

For macOS (Homebrew):

brew install dnsutils whois curl traceroute

2️⃣ Make the Script Executable

chmod +x ip_info_tool.sh

⚠️ Legal Disclaimer

🛑 This tool is for educational and ethical research purposes only. Unauthorized use may violate legal regulations. Use responsibly!

📢 Contributions & Issues

Got an idea for improvement? Found a bug? Feel free to open an issue or submit a pull request! Let’s build something awesome together! 🚀

📜 License

This project is open-source under the MIT License.

👨‍💻 Author

Developed with ❤️ by Yash

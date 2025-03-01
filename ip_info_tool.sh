#!/bin/bash

# Banner
banner() {
    echo -e "\e[1;31m"
    echo "    ================================================"
    echo "    |        hacker.tools.kail - v1.01            |"
    echo "    |        IP Information Gathering Tool        |"
    echo "    |        Author: Yash                        |"
    echo "    ================================================"
    echo -e "\e[0m"
    echo -e "\e[1;32mWelcome to hacker.tools.kail - IP Information Gathering Tool\e[0m"
}

# Warning Message
warning() {
    echo -e "\e[1;33mWARNING: This tool is for educational purposes only. Unauthorized access to computer systems is illegal.\e[0m"
}

# Check for Required Commands
check_dependencies() {
    for cmd in host curl whois dig traceroute; do
        if ! command -v $cmd &>/dev/null; then
            echo -e "\e[1;31mError: $cmd is not installed. Please install it before using this tool.\e[0m"
            exit 1
        fi
    done
}

# Validate IP Address
validate_ip() {
    if [[ ! $1 =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        echo -e "\e[1;31mError: Invalid IP address format.\e[0m"
        exit 1
    fi
}

# Function to Gather IP Information
gather_ip_info() {
    if [ -z "$1" ]; then
        echo -e "\e[1;31mError: No IP address provided.\e[0m"
        return 1
    fi

    IP=$1
    echo -e "\e[1;32mGathering information for IP: $IP\e[0m"

    echo -e "\e[1;34mHostname:\e[0m"
    host $IP | sed 's/^/    /'
    
    echo -e "\e[1;34mGeolocation:\e[0m"
    curl -s ipinfo.io/$IP | jq .
    
    echo -e "\e[1;34mWHOIS Information:\e[0m"
    whois $IP | sed 's/^/    /'
    
    echo -e "\e[1;34mDNS Records:\e[0m"
    dig $IP +short | sed 's/^/    /'
    
    echo -e "\e[1;34mTraceroute:\e[0m"
    traceroute $IP | sed 's/^/    /'
}

# Main Function
main() {
    banner
    warning
    check_dependencies

    if [ "$1" ]; then
        IP_ADDRESS=$1
    else
        read -p "Enter the IP address to gather information: " IP_ADDRESS
    fi
    
    validate_ip $IP_ADDRESS
    gather_ip_info $IP_ADDRESS
}

# Run Main Function
main "$@"


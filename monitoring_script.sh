# Monitoring Shellscript (monitor.sh)
# This script will kick off tcpdump to dump all network traffic in an easy to parse format. This will grab all relevent data and divide it into standard sized pcap files for analysis.

# Developed by Scott J. Roberts

# Usage: ./monitor.sh <name> <seconds per pcap>
# End with CTRL+C or CTRL+D

name="$1_%Y%m%d_%H%M%S.pcap"
pcap_time_size=$2

echo "Name is $name"
echo "PCAP Time Size is $pcap_time_size"

tcpdump_command="sudo /usr/sbin/tcpdump -i eth0 -vvv -G $pcap_time_size -K -w $name"

echo $tcpdump_command
$tcpdump_command

exit 0﻿
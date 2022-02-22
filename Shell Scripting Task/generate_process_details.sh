#!/bin/bash
echo '===== Third most CPU Consuming process =====' >> process_details.txt
ps -eo comm,%cpu,%mem,pid --sort=-%cpu | head -n 4 | sed -e 1b -e '$!d' >> process_details.txt
echo '' >> process_details.txt
echo '===== Third most Memory Consuming process =====' >> process_details.txt
ps -eo comm,%cpu,%mem,pid --sort=-%mem | head -n 4 | sed -e 1b -e '$!d' >> process_details.txt


#!/usr/bin/env bash

echo "===== InfraPulse Health Check ====="
echo ""
echo "Server uptime:"
uptime
echo ""
echo "Memory usage:"
free -h
echo ""
echo "Disk usage:"
df -h /
echo ""
echo "===== Health Check Completed ====="

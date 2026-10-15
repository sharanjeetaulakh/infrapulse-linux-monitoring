
#!/usr/bin/env bash

echo "===== InfraPulse Service Check ====="

if command -v systemctl >/dev/null 2>&1; then
    systemctl is-active ssh
    systemctl is-active nginx
else
    echo "systemctl is not available on this system."
fi

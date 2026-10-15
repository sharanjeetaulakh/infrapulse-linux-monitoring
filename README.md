# InfraPulse — Linux Infrastructure Monitoring & Automation

InfraPulse is a Bash-based project designed to monitor basic Linux server health and check system service status.

The goal of this project is to practise Linux administration, Bash scripting, monitoring, and automation.

## Features

- **System Health Check:** Displays system uptime and load information.
- **Memory Monitoring:** Reports memory usage.
- **Disk Monitoring:** Checks root filesystem disk usage.
- **Service Monitoring:** Checks the status of Linux services such as SSH and Nginx.
- **Command-Line Execution:** Runs monitoring scripts from a Linux terminal.

## Technology Stack

- Linux
- Bash Scripting
- Git
- GitHub
- Visual Studio Code

## Project Structure

```text
infrapulse-linux-monitoring/
├── scripts/
│   ├── health_check.sh
│   └── service_check.sh
└── README.md
```

## Getting Started

### Prerequisites

- A Linux environment
- Bash shell
- Git (for version control)

### Run the Health Check

```bash
bash scripts/health_check.sh
```

### Run the Service Check

```bash
bash scripts/service_check.sh
```

**Note:** These scripts are intended to run in Linux. They are not designed to run directly in standard Windows PowerShell.

## Learning Objectives

- Practise Bash scripting.
- Understand basic Linux system monitoring.
- Check Linux service status.
- Use Git and GitHub to manage project files.
- Build a foundation for infrastructure automation.

## Future Improvements

- Add configurable CPU, memory, and disk thresholds.
- Implement timestamped log files.
- Schedule checks using cron.
- Add email or webhook alerts.
- Add automated tests.

## Project Status

Initial version — basic system health and service-check scripts.

More features will be added as the project develops.

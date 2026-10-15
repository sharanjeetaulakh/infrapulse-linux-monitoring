# InfraPulse — Linux Infrastructure Monitoring & Automation

InfraPulse is a hands-on DevOps project that uses Bash scripting to perform basic Linux infrastructure health checks and service monitoring. The scripts were tested on an Ubuntu Linux virtual machine hosted on Microsoft Azure.

## Project Overview

In DevOps environments, monitoring server health and checking service availability are important for identifying potential infrastructure issues.

InfraPulse automates basic Linux health checks and service status verification, helping simplify routine system administration and troubleshooting tasks.

## Project Objectives

- Monitor Linux server uptime and load average.
- Check memory utilization and available memory.
- Monitor root filesystem disk usage.
- Verify SSH and Nginx service status.
- Validate the local Nginx HTTP response.
- Practise Linux administration, Bash scripting, and cloud VM operations.

## Technology Stack

| Category | Technology |
|---|---|
| Cloud Platform | Microsoft Azure |
| Operating System | Ubuntu Linux |
| Scripting | Bash |
| Version Control | Git and GitHub |
| Web Server | Nginx |
| System Monitoring | `uptime`, `free`, `df` |
| Service Management | `systemctl` |
| HTTP Validation | `curl` |

## Project Structure

```text
infrapulse-linux-monitoring/
├── scripts/
│   ├── health_check.sh
│   └── service_check.sh
└── README.md
```

## Features

### 1. Linux Health Check

The `health_check.sh` script collects basic information about Linux system health.

**Checks performed:**
- Server uptime and load average.
- Memory usage and available memory.
- Root filesystem disk utilization.

**Run the script:**

```bash
bash scripts/health_check.sh
```

**Sample output from Azure Linux VM:**

```text
===== InfraPulse Health Check =====

Server uptime:
10:36:56 up 4 min, 1 user, load average: 0.10, 0.07, 0.01

Memory usage:
Mem: 3.8Gi total, 517Mi used, 2.9Gi free

Disk usage:
Filesystem  Size  Used  Avail  Use%  Mounted on
/dev/root   29G   1.9G  27G    7%    /

===== Health Check Completed =====
```

*Note: Resource values vary depending on the VM configuration and current workload.*

### 2. Linux Service Monitoring

The `service_check.sh` script checks whether the SSH and Nginx services are active using `systemctl`.

**Run the script:**

```bash
bash scripts/service_check.sh
```

**Verified output:**

```text
===== InfraPulse Service Check =====
active
active
```

Both SSH and Nginx returned `active` during testing.

### 3. Nginx HTTP Response Validation

Nginx was installed and started on the Azure Ubuntu VM. The local web server response was validated using `curl`.

**Command:**

```bash
curl -I http://localhost
```

**Verified response:**

```text
HTTP/1.1 200 OK
Server: nginx/1.24.0 (Ubuntu)
Content-Type: text/html
```

The `HTTP/1.1 200 OK` response confirms that the local Nginx web server successfully responded to the HTTP request.

## Deployment and Testing

The project was tested on a Microsoft Azure Linux virtual machine running Ubuntu.

| Test | Result |
|---|---|
| Health check script | Passed |
| SSH service status | Active |
| Nginx service status | Active |
| Local HTTP response | `200 OK` |

These results represent the tests performed in the current environment.

## Getting Started

### Prerequisites

- An Ubuntu Linux machine or virtual machine.
- Git installed.
- Terminal access.
- Nginx installed if you want to perform the HTTP validation test.

### Step 1: Clone the repository

```bash
git clone https://github.com/sharanjeetaulakh/infrapulse-linux-monitoring.git
```

### Step 2: Navigate to the project directory

```bash
cd infrapulse-linux-monitoring
```

### Step 3: Review the project files

```bash
ls -R
```

### Step 4: Run the health check

```bash
bash scripts/health_check.sh
```

### Step 5: Run the service check

```bash
bash scripts/service_check.sh
```

### Step 6: Validate the Nginx response

If Nginx is installed and running, execute:

```bash
curl -I http://localhost
```

A successful local response typically includes `HTTP/1.1 200 OK`.

## Key Learnings

Through this project, I practised:

- Writing and executing Bash scripts.
- Checking Linux uptime, memory, and disk utilization.
- Monitoring service status with `systemctl`.
- Installing and managing Nginx on Ubuntu.
- Validating HTTP responses with `curl`.
- Deploying and testing scripts on an Azure Linux VM.
- Managing project files with Git and GitHub.

## Future Improvements

- Add CPU utilization monitoring.
- Make service names configurable.
- Add threshold-based warnings for memory and disk usage.
- Generate timestamped monitoring logs.
- Implement meaningful exit codes and error handling.
- Schedule automated checks using cron.
- Add automated script validation through a CI/CD pipeline.

## Author

**Sharanjeet Kaur** · [GitHub](https://github.com/sharanjeetaulakh)

---

*InfraPulse is a learning and portfolio project demonstrating foundational Linux monitoring and automation skills.*

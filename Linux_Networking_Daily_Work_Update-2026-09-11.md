# Daily Work Update — Linux

**Date:** 11 September 2026  
**Title:** Linux Commands and Networking — Hands-on Practice

## 1. Work Completed

Today, I continued my hands-on Linux learning as part of my DevOps preparation.

I **practiced and gained hands-on experience with basic and intermediate Linux commands**, rather than only studying the concepts theoretically.

### Basic Linux Commands Practiced

- `pwd` — View the current working directory
- `ls` — List files and directories
- `cd` — Navigate between directories
- `mkdir` — Create directories
- `cat` — View file contents
- `cp` — Copy files and directories
- `mv` — Move or rename files
- `rm` — Remove files and directories
- `head` / `tail` — View the beginning or end of files
- `less` — View large files page by page
- `man` / `--help` — Access command documentation
- `echo` / `printf` — Display and create text content
- Redirection using `>` and `>>`
- Pipes using `|`

### Intermediate Linux Commands Practiced

- `grep` — Search for specific text
- `wc` — Count lines, words, and characters
- `sort` — Sort command output
- `uniq` — Identify/remove duplicate lines
- `cut` — Extract specific fields
- `awk` — Process and filter structured text
- `sed` — Search and modify text
- `find` — Locate files and directories
- `chmod` — Modify file permissions
- `chown` / `chgrp` — Manage file ownership
- `ps` — View running processes
- `top` / `htop` — Monitor system processes
- `kill` — Terminate processes
- `df` — Check filesystem disk usage
- `du` — Check directory/file space usage
- `free` — Check memory usage

## 2. Users and Permissions

Gained practical understanding of Linux users, groups, ownership, and permissions.

Practiced:

- Reading permission information using `ls -l`
- Understanding user, group, and other permissions
- Modifying permissions with `chmod`
- Understanding file ownership concepts
- Using `sudo` for administrative operations
- Resetting the Ubuntu user password when required for administrative tasks

## 3. Linux Networking

Learned the fundamentals of Linux networking and how they relate to DevOps.

### Concepts Covered

- IP addresses
- Network interfaces
- `localhost` and `127.0.0.1`
- Ports
- TCP and UDP
- Routing and default gateway
- Subnets
- DNS
- Firewalls
- Client/server communication

### Networking Commands

| Command | Purpose |
|---|---|
| `ip a` / `ip addr` | View IP addresses and interfaces |
| `ip link` | View network interface status |
| `ip route` | View routing information |
| `ping` | Test basic connectivity |
| `ss -tuln` | Check listening TCP/UDP ports |
| `curl` | Test HTTP/HTTPS communication |
| `nslookup` | Perform DNS lookups |
| `dig` | Perform detailed DNS queries |
| `traceroute` | Examine the network path to a destination |
| `ssh` | Securely connect to a remote Linux system |
| `scp` | Securely transfer files using SSH |

## 4. SSH and SCP

### SSH

Learned that **SSH (Secure Shell)** provides secure remote access to Linux systems.

Example:

```bash
ssh username@server-ip
```

SSH normally uses **TCP port 22**.

### SCP

Learned that **SCP (Secure Copy)** is used to securely transfer files between systems through SSH.

Example:

```bash
scp file.txt username@server-ip:/home/username/
```

## 5. Networking Troubleshooting Understanding

Developed an understanding of how different networking commands help identify problems:

```text
IP Address
    ↓
Network Interface
    ↓
Routing
    ↓
DNS
    ↓
Application/Service
    ↓
Listening Port
    ↓
Firewall
    ↓
Network Response
```

For example:

- `ping` helps check basic connectivity.
- `ip route` helps understand where traffic is being sent.
- `ss` helps identify listening services and ports.
- `curl` helps test application-level HTTP/HTTPS communication.
- `dig` and `nslookup` help troubleshoot DNS.
- `ssh` and `scp` are used for remote administration and file transfer.

## 6. DevOps Relevance

The Linux knowledge gained through hands-on practice provides a foundation for:

- Server administration
- Application troubleshooting
- Docker networking
- Kubernetes networking
- Cloud infrastructure
- CI/CD environments
- Load balancing
- Firewall and security configuration
- Remote Linux server management

## 7. Overall Learning Outcome

Today I strengthened my Linux skills through **practical command-line exercises and hands-on troubleshooting**. I gained experience with **basic and intermediate Linux commands, users and permissions, process/system management, text processing, and Linux networking fundamentals**, including SSH and SCP.


# Linux, Bash & Microsoft 365 Administration

**Date:** September 17, 2026  
**Topics:** Linux Administration, Bash Shell Scripting, Troubleshooting, Microsoft 365 Administration, Microsoft Entra ID, and Exchange Online  
**Level:** Beginner

## 1. Overview

Today I continued my DevOps and IT administration learning with hands-on practice in two major areas:

- **Linux administration, troubleshooting, and Bash shell scripting**
- **Microsoft 365 administration, Microsoft Entra ID, and Exchange Online**

The Linux session focused on using commands, scripts, services, logs, system monitoring, networking, and automation in a beginner DevOps environment. The Microsoft 365 session focused on understanding cloud administration, identity and access management, email, calendaring, and how these services work together.

## 2. Linux Administration & Bash Scripting

### Bash Shell Scripting

I practiced the fundamentals of Bash scripting, including:

- **Shebang:** `#!/bin/bash` specifies Bash as the script interpreter.
- **Variables and output:** Using variables with `echo`, while avoiding spaces around `=`.
- **Command substitution:** Capturing command output using `$(...)`, such as `whoami`, `pwd`, and `date`.
- **User input:** Using `read` to accept information from users.
- **Command-line arguments:** Using `$1`, `$2`, `$#`, and `$@`.
- **Conditional statements:** Practicing `if`, `elif`, `else`, and `fi` for environment-based decisions.
- **Exit status:** `$?` represents the previous command's exit status; `0` indicates success and non-zero values indicate failure.
- **Logical operators:** `&&` runs a command after successful execution, while `||` runs a command when the previous command fails.
- **Loops:** Practicing `for` and `while` loops.
- **File checks:** Using `-f` to check whether a file exists.
- **Functions:** Creating reusable Bash functions for tasks such as displaying system information.
- **Exit and error handling:** Reviewing `exit 0`, `exit 1`, and `set -e`.

I also created deployment-style scripts using environment and server arguments and practiced handling production, testing, development, and unknown environments.

### Linux Administration

I revised and practiced several beginner-level Linux administration topics:

#### Systemd and systemctl

`systemd` manages Linux services, while `systemctl` is used to control them.

Common operations reviewed:

```bash
systemctl status
systemctl start
systemctl stop
systemctl restart
systemctl enable
```

A key distinction is:

```text
start  → starts the service now
enable → configures the service to start at boot
```

Nginx was used as a practical service example.

#### Cron Automation

Cron is used to execute commands or scripts automatically according to a schedule.

Commands practiced:

```bash
crontab -e
crontab -l
```

The five Cron fields were reviewed:

```text
minute hour day-of-month month day-of-week
```

For example:

```text
*/5 * * * *
```

represents a task scheduled every five minutes.

#### Environment Variables

I practiced environment variables using:

```bash
export APP_ENV=development
echo $APP_ENV
env
printenv
```

I also reviewed common variables such as:

```bash
echo $HOME
echo $USER
echo $PATH
```

The role of `.bashrc` in making Bash environment settings persistent was also reviewed.

#### Package Management

Ubuntu's APT package management system was revised:

```bash
sudo apt update
sudo apt install
sudo apt remove
sudo apt upgrade
apt search
```

An important distinction learned was that `apt update` refreshes package information, while `apt upgrade` upgrades installed packages.

#### Logs and Troubleshooting

Linux logs were studied as an important source for diagnosing problems. I explored:

```text
/var/log
```

including Nginx:

```text
access.log
error.log
```

Useful commands included:

```bash
less
grep
tail
journalctl
journalctl -u nginx
```

A structured troubleshooting workflow was practiced:

```text
Service status
      ↓
Logs
      ↓
Port listening
      ↓
Connectivity
      ↓
CPU / Memory / Disk
      ↓
Firewall
      ↓
Configuration
      ↓
Resolution
```

Commands reviewed included:

```bash
systemctl status nginx
journalctl -u nginx
ss -tulpn
curl http://localhost
top
htop
free -h
df -h
du -sh
```

#### Firewall Concepts

I reviewed basic firewall concepts and UFW commands:

```bash
ufw status
ufw allow 80/tcp
ufw status numbered
```

Common ports reviewed:

```text
22  → SSH
80  → HTTP
443 → HTTPS
```

Because the practice environment was WSL, the firewall was not blindly enabled; the focus was on understanding the concepts and commands.

### Integrated Linux DevOps Practice

The Linux topics were connected through a practical Nginx scenario:

```text
APT
 ↓
Install Nginx
 ↓
systemctl
 ↓
Manage service
 ↓
ss + curl
 ↓
Verify port and HTTP response
 ↓
/var/log + journalctl
 ↓
Inspect logs
 ↓
top + free + df
 ↓
Check system resources
 ↓
UFW
 ↓
Understand firewall access
 ↓
Bash health-check script
 ↓
Cron
 ↓
Automated health checks
```

This demonstrated how Linux administration, troubleshooting, shell scripting, and automation can be combined in a DevOps workflow.

## 3. Microsoft 365 Administration

### Microsoft 365 Overview

Microsoft 365 is a cloud-based productivity platform providing services for email, collaboration, identity, applications, and administration.

A simplified structure is:

```text
Microsoft 365
     |
     +-- Microsoft Entra ID → Identity & Access
     |
     +-- Exchange Online   → Email & Calendar
     |
     +-- Teams             → Collaboration
```

### Microsoft 365 Tenant

A **tenant** is an organization's dedicated Microsoft 365 environment.

A tenant can contain:

- Users
- Groups
- Licenses
- Applications
- Mailboxes
- Security settings
- Microsoft 365 services

### Microsoft 365 Admin Center

The Microsoft 365 Admin Center is the central web-based administration portal for managing an organization's Microsoft 365 environment.

Common administration tasks include:

- Creating and managing users
- Resetting passwords
- Assigning licenses
- Managing groups
- Managing administrator roles
- Checking service health
- Managing Microsoft 365 services
- Accessing specialized administration centers

A typical new-user workflow is:

```text
Create User
     ↓
Assign Microsoft 365 License
     ↓
Configure Required Services
     ↓
User Can Sign In
```

Important concepts include users, licenses, groups, administrator roles, and service health.

### Administrator Roles and Least Privilege

Examples of administrator roles include:

- Global Administrator
- Exchange Administrator
- User Administrator
- Helpdesk Administrator

Different roles provide different administrative permissions. This supports the principle of **least privilege**, where administrators receive only the permissions needed for their responsibilities.

### Microsoft Entra ID

**Microsoft Entra ID** is Microsoft's cloud-based Identity and Access Management (IAM) service. It was previously known as Azure Active Directory (Azure AD).

It manages areas such as:

- Identities
- Authentication
- Authorization
- Groups
- Application access
- Devices
- Security policies

A simple way to remember it:

> **Microsoft Entra ID manages who you are and what you are allowed to access.**

### Authentication vs Authorization

**Authentication** answers:

> Who are you?

**Authorization** answers:

> What are you allowed to access?

Memory trick:

```text
Authentication = Who are you?
Authorization  = What can you access?
```

### Multi-Factor Authentication (MFA)

MFA provides an additional authentication step beyond a password.

```text
Username + Password
        ↓
       MFA
        ↓
Additional Verification
        ↓
      Access
```

Its purpose is to provide stronger protection than password-only authentication.

### Entra Groups

Groups organize users and can simplify access management.

For example:

```text
DevOps Group
     |
     +-- Lakshmi
     +-- Rahul
     +-- Arun
```

Access can be managed through groups rather than individually for every user.

### Conditional Access

Conditional Access is an Entra security capability that applies access controls based on defined conditions.

General model:

```text
IF conditions are met
        ↓
THEN apply access control
```

Conditions can involve factors such as:

- User
- Group
- Application
- Device
- Location
- Risk
- Authentication requirements

Example:

```text
IF user accesses a sensitive application
        ↓
THEN require MFA
```

### Enterprise Applications

Microsoft Entra can integrate identities with applications.

A simplified flow is:

```text
Employee
   ↓
Microsoft Entra ID
   ↓
Application
   ↓
Access
```

This can support centralized identity management and Single Sign-On (SSO) for supported applications.

## 4. Exchange Online

### Overview

**Microsoft Exchange Online** is Microsoft's cloud-hosted email and calendaring service.

It manages:

- Mailboxes
- Email
- Calendar
- Contacts
- Mail flow
- Shared mailboxes
- Distribution groups

Simple definition:

> **Exchange Online manages email and calendaring in Microsoft 365.**

### Outlook vs Exchange Online

**Outlook** is the application/interface used by users to access email, calendars, contacts, and other features.

**Exchange Online** is the backend cloud service providing mailbox and email functionality.

```text
Outlook
   ↓
Exchange Online
   ↓
Mailbox
```

Therefore:

> Outlook is the client/application, while Exchange Online provides the underlying email service.

### Mailboxes

A mailbox stores a user's email and related information.

```text
lakshmi@cybercyko.com
        ↓
Exchange Online
        ↓
Mailbox
   ├── Inbox
   ├── Sent
   └── Calendar
```

### Shared Mailbox

A shared mailbox allows multiple authorized users to work with a common mailbox.

Examples include:

```text
support@cybercyko.com
sales@cybercyko.com
info@cybercyko.com
```

Conceptually:

```text
support@cybercyko.com
        |
   +----+----+----+
   |         |    |
Employee A Employee B Employee C
```

Appropriate permissions are required for users to access and work with the shared mailbox.

### Distribution Group

A distribution group provides a group email address used to distribute messages to its members.

Example:

```text
all@cybercyko.com
       |
   +---+---+---+
   |   |   |   |
 Lakshmi Rahul Arun Priya
```

### Shared Mailbox vs Distribution Group

| Feature | Shared Mailbox | Distribution Group |
|---|---|---|
| Main purpose | Shared team mailbox | Distribute messages |
| Common example | support@company.com | all@company.com |
| Shared mailbox content | Yes | No shared mailbox |
| Multiple users access mailbox | Yes, when permitted | No |
| Used mainly for message distribution | Not primarily | Yes |

Memory trick:

```text
Shared Mailbox
= Multiple people work from one mailbox

Distribution Group
= One address distributes messages to members
```

### Mail Flow

Exchange Online handles organizational email flow.

Outgoing:

```text
Sender
  ↓
Outlook
  ↓
Exchange Online
  ↓
Internet
  ↓
Recipient
```

Incoming:

```text
Internet
  ↓
Exchange Online
  ↓
Recipient's Mailbox
  ↓
Outlook
```

### Mail Flow Rules

Exchange administrators can create rules that inspect messages and perform configured actions when specified conditions are met.

```text
Incoming/Outgoing Message
          ↓
      Check Rules
       /       Condition      No Match
Matches          |
   ↓             |
Configured       |
Action           |
```

Mail flow rules are also commonly called **transport rules**.

### Exchange Calendar

Exchange Online also provides calendaring functionality:

```text
Meeting Invitation
       ↓
Exchange Online
       ↓
Participant Calendars
       ↓
Meeting Scheduled
```

## 5. How Microsoft 365 Services Work Together

The three main services can be understood through a new-employee scenario.

### Step 1 — Microsoft 365 Admin Center

The administrator manages the employee's Microsoft 365 account and assigns the appropriate license.

```text
Microsoft 365 Admin Center
          ↓
        User
          ↓
       License
```

### Step 2 — Microsoft Entra ID

The employee has an identity in Entra ID.

```text
User
 ↓
Microsoft Entra ID
 ↓
Authentication
 ↓
MFA / Access Policies
```

### Step 3 — Exchange Online

When the appropriate Exchange service is licensed and configured, the employee can have an Exchange Online mailbox.

```text
User
 ↓
Exchange Online
 ↓
Company Email Address
 ↓
Mailbox
```

### Complete Architecture

```text
                       Microsoft 365 Tenant
                              |
                              v
                    Microsoft 365 Admin Center
                              |
                 +------------+------------+
                 |                         |
                 v                         v
        Microsoft Entra ID          Exchange Online
                 |                         |
                 v                         v
        Identity & Access             Email & Calendar
                 |                         |
        +--------+--------+        +------+------+
        |        |        |        |      |      |
      Users    Groups    MFA    Mailbox Groups Calendar
```

## 6. Practical Learning / Exploration

If access to a Microsoft 365 tenant is available, the administration portals can be explored without making changes to production settings.

### Microsoft 365 Admin Center

Explore:

```text
Users
Groups
Licenses
Roles
Service Health
Settings
```

### Microsoft Entra

Explore:

```text
Users
Groups
Devices
Enterprise Applications
Authentication
Security
```

### Exchange Admin Center

Explore:

```text
Recipients
Mailboxes
Groups
Mail Flow
```

The goal is to understand what each section is responsible for.

## 7. Key DevOps and IT Administration Takeaways

Today's learning connected Linux operations with cloud-based Microsoft administration.

### Linux

The main operational mindset was:

> **Check the service → check the logs → check the port → test connectivity → check resources → check firewall → investigate configuration → automate repetitive checks.**

Bash scripting adds automation by allowing repetitive operational checks to be performed through scripts and scheduled tasks.

### Microsoft 365

The core mental model is:

```text
Admin Center
= Administration

Entra ID
= Identity & Access

Exchange Online
= Email & Calendar
```

Together, these services demonstrate how identity, access, cloud administration, email, and organizational services are managed in a Microsoft 365 environment.

## 8. Overall Learning Completed Today

### Linux & DevOps

- Linux commands
- File and directory management
- Permissions and ownership
- Users and groups
- Process management
- Log analysis
- Text processing with `grep`, `awk`, and `sed`
- Redirection and pipelines
- Disk and memory monitoring
- Package management
- Networking fundamentals
- SSH and SCP
- Bash scripting fundamentals
- Service management
- Cron automation
- Environment variables
- Basic firewall concepts
- Linux troubleshooting

### Microsoft 365 & IT Administration

- Microsoft 365 Admin Center
- Microsoft 365 tenants
- Users, groups, and licenses
- Administrator roles and least privilege
- Microsoft Entra ID
- Authentication and authorization
- MFA
- Conditional Access
- Enterprise Applications and SSO
- Exchange Online
- Outlook vs Exchange Online
- Mailboxes
- Shared mailboxes
- Distribution groups
- Mail flow
- Mail flow rules
- Exchange calendar
- Relationship between Admin Center, Entra ID, and Exchange Online

## 9. Final Summary

Today I completed a combined learning session covering **Linux administration, Bash scripting, troubleshooting, automation, and Microsoft 365 administration**.

On the Linux side, I practiced scripting fundamentals, service management, Cron, environment variables, package management, logs, system monitoring, networking, firewall concepts, and structured troubleshooting. I also connected these topics through an Nginx health-check and automation scenario.

On the Microsoft 365 side, I learned the fundamentals of the Microsoft 365 Admin Center, Microsoft Entra ID, and Exchange Online. I focused on users, licenses, groups, authentication, authorization, MFA, Conditional Access, applications, mailboxes, shared mailboxes, distribution groups, mail flow, and calendars.

Overall, today's session helped connect **Linux operational skills, automation, troubleshooting, cloud administration, identity management, and email administration** with practical concepts relevant to a beginner DevOps and IT administration environment.

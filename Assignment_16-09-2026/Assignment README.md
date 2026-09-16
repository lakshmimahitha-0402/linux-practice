# Linux Users, Groups & File Permissions Assignment

**Date:** September 16, 2026  
**Environment:** Ubuntu Linux (WSL)  
**Assignment:** User and Group Management with File Permissions

---

## 1. Objective

The objective of this assignment was to gain hands-on experience with Linux:

- User creation and management
- Group creation and management
- Assigning users to groups
- Group-based file ownership
- Configuring read/write permissions
- Verifying users, groups, and permissions
- Managing the assignment using Git and GitHub

---

## 2. Groups Created

The following groups were created:

```text
Gryffindor
Hufflepuff
Ravenclaw
Slytherin
Professors
```

---

## 3. User and Group Assignment

Five users were assigned to their respective groups.

One additional user was created but was not assigned to any of the five groups.

The purpose was to understand how Linux determines access based on:

```text
Owner → Group → Others
```

---

## 4. Files Created

One file was created for each group:

```text
gryffindor_file.txt
hufflepuff_file.txt
ravenclaw_file.txt
slytherin_file.txt
restricted_file.txt
```

Group ownership was configured as follows:

| File | Group |
|---|---|
| `gryffindor_file.txt` | Gryffindor |
| `hufflepuff_file.txt` | Hufflepuff |
| `ravenclaw_file.txt` | Ravenclaw |
| `slytherin_file.txt` | Slytherin |
| `restricted_file.txt` | Professors |

---

## 5. File Permissions

The group-specific files were configured to provide read and write permissions to their respective groups while restricting access for other users.

Example permission:

```text
----rw----
```

Permission structure:

```text
Owner | Group | Others
------|-------|-------
  --- |  rw-  |  ---
```

This demonstrates that users who are members of the file's group can perform the permitted operations.

The `restricted_file.txt` file was assigned to the `Professors` group with read/write permissions for both the owner and group.

---

## 6. Commands Practiced

### Create Groups

```bash
sudo groupadd <group_name>
```

### Create Users

```bash
sudo useradd -m <username>
```

### Add User to Group

```bash
sudo usermod -aG <group_name> <username>
```

### Add User to Multiple Groups

```bash
sudo usermod -aG group1,group2,group3 <username>
```

### Change Group Ownership

```bash
sudo chown :<group_name> <file>
```

### Change Permissions

```bash
chmod 060 <file>
```

### Verify User Groups

```bash
groups <username>
```

### Verify User and Group Information

```bash
id <username>
```

### Verify File Ownership and Permissions

```bash
ls -l
```

---

## 7. Git and GitHub

The assignment was maintained in the following directory:

```text
Assignment_16-09-2026
```

The assignment was committed and pushed to GitHub using Git.

Basic workflow used:

```bash
git add .
git commit -m "Add Assignment 16-09-2026"
git push
```

The repository is available on GitHub for review.

---

## 8. Key Learning

Through this assignment, I gained practical understanding of:

- Linux user and group management
- Group-based access control
- Linux permission structure (`Owner`, `Group`, `Others`)
- File ownership using `chown`
- Permission management using `chmod`
- User verification using `id` and `groups`
- Git workflow for maintaining and submitting Linux assignments

This assignment provided hands-on practice with Linux access control and basic system administration concepts.
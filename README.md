# Linux User Management Script

A Bash-based automation tool for performing common Linux system administration tasks such as user and group management.

---

## 🚀 Features

- Create new users
- Delete existing users
- Create groups
- Add users to groups
- Logs all actions to a file

---

## 🛠️ Technologies Used

- Bash (Shell Scripting)
- Linux Commands

---

## 📂 Script Overview

This script uses core Linux commands:
- `useradd`
- `userdel`
- `groupadd`
- `usermod`

It also maintains a log file (`user_manage.log`) to track all operations.

---

## ▶️ How to Run

```bash
chmod +x user_manage.sh
./user_manage.sh

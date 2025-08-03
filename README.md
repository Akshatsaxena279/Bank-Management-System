# Bank-Management-System
A Python-Tkinter based Bank Management System with MySQL integration. It supports account creation, deposits, withdrawals, closures (with trigger-based logging), and transaction viewing. Includes a GUI to display table data (master, trans, account_closed) without using MySQL directly. 

# Bank Management System (Python + MySQL + Tkinter)

This project is a simple yet functional Bank Management System built using Python, MySQL, and Tkinter. It allows users to perform core banking operations such as opening accounts, making deposits and withdrawals, checking balances, and viewing account activity—all through a combination of terminal input and a user-friendly GUI.

It also includes a MySQL trigger that logs closed accounts into a separate table automatically, helping preserve transaction history.

## Features

- Open a new account with an initial deposit
- Deposit and withdraw money
- View account balance and transaction history
- Close an account (with automatic archival via SQL trigger)
- Tkinter GUI to view table data (`master`, `trans`, `account_closed`)
- Data is stored and managed using MySQL
- Basic error handling and date tracking

## Technologies Used

- **Python 3**
- **MySQL** (with PyMySQL)
- **Tkinter** (for GUI table viewer)
- **SQL Triggers** (for logging closed accounts)
  
##  Setup Instructions

1. **Install Requirements**
   ```bash
   pip install pymysql

# Project Structure
Banking system/
├── bank.py              # Main Python program
├── README.md            # Project overview
└── Sql file             # mysql code(database for bank) 


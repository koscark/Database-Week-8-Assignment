# Database-Week-8-Assignment

# Clubs and Societies Management System

## Project Description

The **Clubs and Societies Management System** is a relational database implemented entirely in MySQL. It is designed to manage the operations of various student or community clubs, including the registration of members, organization of events, and tracking of club leadership roles.

The database handles:
- Club registration and management
- Member enrollment and roles within clubs
- Event planning and participant tracking
- Appointment of club presidents
- Enforcement of referential integrity and relationship constraints

This system is ideal for institutions or organizations looking to centralize and automate club and event management.

---

##  Setup Instructions

### Requirements
- MySQL Server
- MySQL Workbench or any SQL client of your choice

### Steps to Run the Project

1. **Clone the repository** or download the `.sql` file:
    ```
    https://github.com/koscark/answers.sql
    ```

2. **Open MySQL Workbench** or connect to your MySQL server via CLI.

3. **Create a new database**:
    ```sql
    CREATE DATABASE club_management;
    USE club_management;
    ```

4. **Import the SQL file**:
    - In MySQL Workbench:
      - Go to `File > Open SQL Script`, and select `answers.sql`.
      - Execute the script to create all tables.
    - Or via CLI:
      ```bash
      mysql -u your_user -p club_management < answers.sql
      ```

---

## 🧩 Entity Relationship Diagram (ERD)

![ERD Screenshot](https://i.imgur.com/your-erd-image.png)

> 📌 *If you're using a tool like dbdiagram.io or MySQL Workbench, you can export and upload the ERD as an image or provide a public link.*

Alternatively, view the ERD online:
[View ERD](https://dbdiagram.io/d/your-diagram-link)

---

## 📁 File Structure


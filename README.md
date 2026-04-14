# PKU Management System

A web-based University Health Center (Pusat Kesihatan Universiti) management system built with Java Servlets and JSP. Handles patient records, appointments, staff management, treatments, and payment processing with role-based access control.

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Language | Java (Servlets / JSP) |
| Build Tool | Apache Ant / NetBeans |
| Server | Apache Tomcat 9+ |
| Database | MySQL / MariaDB 10.4+ |
| Frontend | HTML5, JSP, CSS3, JavaScript |
| Icons | Font Awesome 6.0.0-beta3 |
| Libraries | mysql-connector-j-9.2.0, gson-2.10.1 |

---

## Features

- **Authentication & Authorization** — Role-based login (Admin, Doctor, Receptionist) with 30-minute session timeout
- **Appointment Management** — Create, edit, delete, and track appointments; filter by pending/completed status
- **Patient Management** — Full patient profiles (demographics, blood type, weight, height); search functionality; student vs non-student classification
- **Staff Management** — Add/edit/delete doctors, receptionists, and admins; role-specific attributes (specialization, desk number)
- **Treatment Records** — Link symptoms, illnesses, and medicines (with dosages) to appointments
- **Payment Processing** — Record payments with multiple methods (Cash, Card, Online Banking, Credit Card); track paid/unpaid status
- **Role-Specific Dashboards** — Admin, Doctor, and Receptionist views with relevant statistics

---

## Project Structure

PKU Management System/
├── src/java/
│   ├── dao/          # Data Access Objects (JDBC / PreparedStatements)
│   ├── model/        # Entity classes (User, Patient, Appointment, etc.)
│   └── servlet/      # HTTP request handlers (controllers)
├── web/
│   ├── *.jsp         # JSP views (33 pages)
│   ├── styles/       # CSS stylesheets
│   └── WEB-INF/
│       └── web.xml   # Deployment descriptor
├── pkudb.sql         # Database schema + sample data
└── build.xml         # Ant build configuration



---

## Database Schema

12 tables: `users`, `patient`, `appointment`, `treatment`, `payment`, `doctor`, `receptionist`, `admin`, `illness`, `medicine`, `treatmentillness`, `treatmentmedicine`

---

## Setup & Installation

### Prerequisites
- Java JDK 8+
- Apache Tomcat 9+
- MySQL / MariaDB 5.7+ or 10.4+

### 1. Database Setup

```sql
-- In MySQL/MariaDB:
source pkudb.sql;
Or import pkudb.sql via phpMyAdmin / MySQL Workbench.

2. Configure Database Connection
Edit the connection settings in the DAO classes under src/java/dao/:


// Default values (update as needed)
String url = "jdbc:mysql://localhost:3306/pkudb";
String user = "root";
String password = "";
3. Build

ant build
Or in NetBeans: Build → Build Project

4. Deploy
Copy the generated WAR file to Tomcat's webapps/ directory, or deploy directly from NetBeans: Run → Deploy Project

5. Access

http://localhost:8080/PKU_Usman_/
Default Credentials
User ID	Password	Role	Name
U002	admin456	Admin	Sarah Lim
U001	pass123	Doctor	Adam Loo
U003	pass789	Receptionist	Lisa Wongi
U004	docpass	Doctor	Dr. Nur Aliah
Architecture
MVC Pattern:

Models — model/ package (User, Patient, Appointment, Treatment, Payment, Staff)
Views — JSP pages in web/
Controllers — Servlet classes in servlet/
DAO Pattern — Each entity has a dedicated DAO using JDBC PreparedStatements for SQL query safety.

Security Notes
This project is intended for educational/academic use.

Passwords are stored as plain text — implement bcrypt or similar hashing before any production deployment.
Database credentials are hardcoded in DAO classes — move to environment variables or a config file for production.
SQL injection protection is in place via PreparedStatements.

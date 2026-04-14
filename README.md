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


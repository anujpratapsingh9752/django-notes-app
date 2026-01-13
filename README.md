# Django Notes App (Docker + Nginx + MySQL + AWS EC2)

This project is a *Django Notes App* deployed using *Docker, Docker Compose, MySQL, and Nginx* on an *AWS EC2 instance*.  

> ⚡ This project was *forked from another GitHub repository*. I performed the deployment, Dockerization, and AWS setup.

---

## 🔹 Work Done (By Me)

- Forked the original project from GitHub.
- Created *Dockerfile* for the Django app.
- Created *Docker Compose file* with:
  - MySQL service with persistent *volume* mysql-data
  - Django service
  - Nginx service
- Created *Docker network* notes-app-net.
- Configured *Nginx* as reverse proxy to serve the Django app on port 80.
- Launched the app on *AWS EC2 instance* using public IPv4 address.
- Configured *EC2 Security Group* to open *port 80* for HTTP access.
- Successfully ran the app via *Docker Compose* on EC2.

---

## 🔹 Project Setup (Local / Server)

### 1️⃣ Clone the Repository (Forked)
```bash
git clone https://github.com/anujpratapsingh9752/django-notes-app.git
cd django-notes-app

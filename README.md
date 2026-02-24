# 🚀 MEAN Stack CRUD Application – Dockerized Deployment

## 📌 Project Overview

This project demonstrates a **production-style deployment** of a MEAN Stack (MongoDB, Express, Angular, Node.js) CRUD application using:

* Docker (Multi-stage builds)
* Docker Compose (Service orchestration)
* Nginx (Reverse Proxy)
* GitHub Actions (CI/CD Pipeline)
* AWS EC2 (Cloud Deployment)

The goal of this project is to simulate a real-world DevOps deployment workflow.

---

## 🏗️ Tech Stack

### Frontend

* Angular
* Nginx (Production build serving)

### Backend

* Node.js
* Express.js

### Database

* MongoDB (Docker container)

### DevOps Tools

* Docker
* Docker Compose
* GitHub Actions
* AWS EC2 (Ubuntu)

---

## 📂 Project Structure

```
mean-crud-docker-deployment/
│
├── backend/
│   ├── Dockerfile
│   └── source code
│
├── frontend/
│   ├── Dockerfile
│   └── Angular app
│
├── nginx/
│   └── default.conf
│
├── docker-compose.yml
└── .github/workflows/main.yml
```

---

## 🐳 Docker Architecture

```
User
  ↓
Nginx (Reverse Proxy)
  ↓
Frontend (Angular - Nginx)
  ↓
Backend (Node + Express)
  ↓
MongoDB
```

---

## ⚙️ On Ubuntu VM

### 1️⃣ Setup MEAN stack

```bash
sudo apt update
sudo apt-get install gnupg curl 
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc |    sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg    --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
sudo apt install nodejs npm -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.bashrc
nvm install --lts
node -v
npm -v
npm install -g @angular/cli
ng version
ng new angular-15-crud
ls
cd angular-15-crud
ng serve --host 0.0.0.0 --port 4200
```

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Sejal075/MEAN-Application.git
cd MEAN-Application
npm init -y
npm install express
```

### 2️⃣ Build docker images and Start Containers

```bash
docker login -u sejalru23
docker build -t sejalru23/mean-frontend ./frontend
docker build -t sejalru23/mean-backend ./backend
docker push sejalru23/mean-backend
docker push sejalru23/mean-frontend
docker images
docker-compose up --build -d
```

### 3️⃣ Access Application

```
(http://<EC2-Public-IP>)
```

---

## ☁️ Cloud Deployment (AWS EC2)

1. Launch Ubuntu EC2 instance
2. Install Docker & Docker Compose
3. Clone repository
4. Run:

```bash
docker-compose up -d
```

Application will be accessible via:

```
http://<EC2-Public-IP>
```

---

## 🔄 CI/CD Pipeline

This project uses **GitHub Actions** to:

* Automatically build Docker images
* Push images to Docker Hub
* Deploy to remote VM using SSH

Workflow file location:

```
.github/workflows/main.yml
```

Triggered on:

```
Push to main branch
```

---

## 🔐 Environment Variables

Backend uses:

```
MONGO_URI=mongodb://mongo:27017/meancrud
```

These are defined in `docker-compose.yml`.

---

## 📦 Docker Images

* `sejalru23/mean-backend`
* `sejalru23/mean-frontend`

---

## 📊 Key DevOps Concepts Demonstrated

* Multi-stage Docker builds
* Container networking
* Service orchestration
* Reverse proxy configuration
* CI/CD automation
* Cloud deployment
* Production-ready architecture

---

## 👩‍💻 Author

**Sejal Umredkar**
DevOps & Cloud Enthusiast

---



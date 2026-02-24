# 🚀 MEAN Stack CRUD Application – Dockerized Deployment

### 📌 Project Overview

This project demonstrates a production-style deployment of a MEAN Stack (MongoDB, Express, Angular, Node.js) CRUD application using:

Docker (Multi-stage builds)

Docker Compose (Service orchestration)

Nginx (Reverse Proxy)

GitHub Actions (CI/CD Pipeline)

AWS EC2 (Cloud Deployment)

The goal of this project is to simulate a real-world DevOps deployment workflow.

🏗️ Tech Stack
Frontend

Angular

Nginx (Production build serving)

Backend

Node.js

Express.js

Database

MongoDB (Docker container)

DevOps Tools

Docker

Docker Compose

GitHub Actions

AWS EC2 (Ubuntu)

📂 Project Structure
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
└── .github/workflows/docker.yml
🐳 Docker Architecture
User
  ↓
Nginx (Reverse Proxy)
  ↓
Frontend (Angular - Nginx)
  ↓
Backend (Node + Express)
  ↓
MongoDB
⚙️ How to Run Locally (Docker Compose)
1️⃣ Clone the Repository
git clone https://github.com/<your-username>/mean-crud-docker-deployment.git
cd mean-crud-docker-deployment
2️⃣ Build and Start Containers
docker-compose up --build -d
3️⃣ Access Application
http://localhost
☁️ Cloud Deployment (AWS EC2)

Launch Ubuntu EC2 instance

Install Docker & Docker Compose

Clone repository

Run:

docker-compose up -d

Application will be accessible via:

http://<EC2-Public-IP>
🔄 CI/CD Pipeline

This project uses GitHub Actions to:

Automatically build Docker images

Push images to Docker Hub

Deploy to remote VM using SSH

Workflow file location:

.github/workflows/docker.yml

Triggered on:

Push to main branch
🔐 Environment Variables

Backend uses:

MONGO_URI=mongodb://mongo:27017/meancrud

These are defined in docker-compose.yml.

📦 Docker Images

<dockerhub-username>/mean-backend

<dockerhub-username>/mean-frontend

📊 Key DevOps Concepts Demonstrated

Multi-stage Docker builds

Container networking

Service orchestration

Reverse proxy configuration

CI/CD automation

Cloud deployment

Production-ready architecture

🎯 Future Improvements

Add HTTPS with Let's Encrypt

Add Kubernetes deployment

Add Monitoring (Prometheus + Grafana)

Add Terraform for Infrastructure as Code

👩‍💻 Author

Sejal Umredkar
DevOps & Cloud Enthusiast

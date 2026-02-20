# System Architecture

## Overview
The Car Pooling System is designed as a microservices-based application, orchestrated by this central repository. It consists of a Node.js backend, a React web frontend, and a React Native mobile application.

## Components

### 1. Backend Service (`carpooling-backend`)
- **Role**: Core API, Business Logic, Data Persistence
- **Technology**: Node.js, Express, MongoDB
- **Hosting**: Railway
- **Key Features**:
  - Authentication (JWT)
  - Ride Management
  - User Profiles
  - Booking System

### 2. Web Frontend (`carpooling-frontend-web`)
- **Role**: Admin Dashboard, User Web Interface
- **Technology**: React, Vite
- **Hosting**: Vercel
- **Key Features**:
  - Responsive Design
  - Admin Controls
  - Ride Booking UI

### 3. Mobile Frontend (`carpooling-frontend-mobile`)
- **Role**: Primary User Interface for Riders/Drivers
- **Technology**: React Native, Expo
- **Hosting**: Expo EAS
- **Key Features**:
  - Real-time location (planned)
  - Push Notifications
  - Mobile-optimized flows

## Data Flow

```mermaid
graph TD
    User[User (Mobile/Web)] -->|HTTP/REST| Web[Web Frontend]
    User -->|HTTP/REST| Mobile[Mobile App]
    Web -->|API Calls| Backend[Backend API]
    Mobile -->|API Calls| Backend
    Backend -->|Read/Write| DB[(MongoDB)]
    
    subgraph "Deployment Pipeline"
        Orchestrator[Deployment Repo] -->|Trigger| Backend
        Backend -->|Success| Web
        Web -->|Success| Mobile
    end
```

## Infrastructure
- **Version Control**: GitHub (Monorepo-style orchestration with separate repos)
- **CI/CD**: GitHub Actions
- **Database**: MongoDB Atlas (or self-hosted on Railway)

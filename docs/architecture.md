# System Architecture

## Overview
The Carpooling System relies on a microservices-inspired architecture where the frontend clients consume a centralized REST API.

```mermaid
graph TD
    User[User] --> Web[Web Frontend (Vercel)]
    User --> Mobile[Mobile App (Expo)]
    
    Web --> API[Backend API (Railway)]
    Mobile --> API
    
    API --> DB[(MongoDB Atlas)]
    API --> Maps[Google Maps API]
    API --> Twilio[Twilio SMS]
```

## detailed Components

### Backend
- **Tech**: Node.js, Express
- **Database**: MongoDB (Mongoose)
- **Role**: Auth, ride matching, booking logic.

### Web Frontend
- **Tech**: React, Vite
- **Role**: Admin dashboard, desktop rider/driver interface.

### Mobile Frontend
- **Tech**: React Native, Expo
- **Role**: Primary driver/rider interface, GPS tracking.

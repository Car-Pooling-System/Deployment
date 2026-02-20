# API Endpoints

Base URL: `https://backend.railway.app/api/v1`

## Auth
- **POST** `/auth/register`: Register a new user.
- **POST** `/auth/login`: Authenticate and receive JWT.

## Users
- **GET** `/users/profile`: Get current user profile.
- **PUT** `/users/profile`: Update profile.

## Rides
- **GET** `/rides`: Search for available rides.
- **POST** `/rides`: Publish a new ride (Driver only).
- **GET** `/rides/:id`: Get ride details.
- **POST** `/rides/:id/book`: Book a seat on a ride.

## Health
- **GET** `/health`: System health check. Returns `{ status: "UP" }`.

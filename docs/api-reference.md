# API Reference

Base URL: `https://backend.railway.app`

## Authentication
- `POST /api/auth/register`: Create new user.
- `POST /api/auth/login`: Get JWT token.

## Rides
- `GET /api/rides`: List available rides.
- `POST /api/rides`: Create a new ride (Driver only).
- `POST /api/rides/:id/book`: Book a seat on a ride.

## Health
- `GET /health`: Check system status. Returns `{ status: 'ok' }`.

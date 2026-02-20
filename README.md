# Car Pooling System - Deployment Orchestrator

[![Build Status](https://img.shields.io/github/actions/workflow/status/Car-Pooling-System/deployment/deploy-all.yml?branch=main)](https://github.com/Car-Pooling-System/deployment/actions)
[![System Status](https://img.shields.io/website?url=https%3A%2F%2Fbackend.railway.app%2Fhealth&label=Backend)](https://backend.railway.app/health)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This repository serves as the **Central Orchestration Unit** for the Car Pooling System microservices architecture. It manages the deployment pipeline, integration testing, and system-wide documentation.

### Managed Services
| Service | Repository | Tech Stack | Status |
|---------|------------|------------|--------|
| **Backend API** | [carpooling-backend](https://github.com/Car-Pooling-System/Car-Pooling-System-Backend) | Node.js, Express, MongoDB | 🟢 |
| **Web Frontend** | [carpooling-frontend-web](https://github.com/Car-Pooling-System/Car-Pooling-System-Web-Frontend) | React, Vite | 🟢 |
| **Mobile App** | [carpooling-frontend-mobile](https://github.com/Car-Pooling-System/Car-Pooling-System-Mobile-Frontend) | React Native, Expo | 🟢 |

## 🚀 Quick Start

### Prerequisites
- Node.js 18+
- GitHub CLI (`gh`)

### Setup Local Environment
```bash
./scripts/setup-local.sh
```

### Trigger Deployment
To deploy all services to the **Staging** environment:
```bash
./scripts/deploy-all.sh staging
```

## 📂 Project Structure

```
├── .github/workflows/   # CI/CD Pipelines (Deploy, Health Check, Rollback)
├── config/              # Centralized Configuration (Repos, Env Vars)
├── docs/                # Architecture & guides
├── scripts/             # Utility scripts for local & CI usage
├── monitoring/          # Status dashboards & alerts
└── tests/               # System-wide integration tests
```

## 📚 Documentation

- [System Architecture](docs/architecture.md)
- [Deployment Guide](docs/deployment-guide.md)
- [CI/CD Strategy](docs/ci-cd-strategy.md)
- [Troubleshooting](docs/troubleshooting.md)
- [API Endpoints](docs/api-endpoints.md)

## 🤝 Contributing
1. Fork the specific service repository.
2. Create a feature branch (`feature/amazing-feature`).
3. Open a Pull Request in that repository.
4. Once merged to `develop`, the Staging pipeline will trigger automatically.

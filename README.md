# Carpooling System Orchestrator

**Centralized deployment, documentation, and integration testing for the Carpooling System.**

This repository serves as the master controller for:
1.  **[Backend](https://github.com/Car-Pooling-System/Car-Pooling-System-Backend)**: Node.js + Express + MongoDB
2.  **[Web Frontend](https://github.com/Car-Pooling-System/Car-Pooling-System-Web-Frontend)**: React (Vite)
3.  **[Mobile Frontend](https://github.com/Car-Pooling-System/Car-Pooling-System-Mobile-Frontend)**: React Native (Expo)

## Features
- **One-Click Deployment**: Trigger full system deploy via GitHub Actions.
- **Ordered Rollout**: Backend -> Web -> Mobile (sequentially).
- **Integration Testing**: Automated tests verifying cross-service functionality.
- **Documentation**: Centralized architecture and troubleshooting guides.

## Quick Start

### Prerequisites
- GitHub Personal Access Token (`GH_PAT`) with repo access.

### Deploying
Run the deployment script:
```bash
./scripts/deploy.sh
```
Or manually trigger the **Master Deployment** workflow in Actions.

## Documentation
- [Architecture Overview](docs/architecture.md)
- [Deployment Guide](docs/deployment-guide.md)
- [Troubleshooting](docs/troubleshooting.md)
- [API Reference](docs/api-reference.md)

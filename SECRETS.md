# Secrets & Configuration Guide

To enable the full CI/CD pipeline, you must configure secrets in each repository.

## 1. Orchestrator Repo (`carpooling-deployment`)
**Required Secret:**
- `GH_PAT`: A GitHub Personal Access Token with `repo` and `workflow` scopes.
  - **Purpose**: Allows the orchestrator to trigger workflows in other repositories.
  - **Creation**: [GitHub Settings > Developer Settings > PATs](https://github.com/settings/tokens/new)

## 2. Mobile Repo (`Car-Pooling-System-Mobile-Frontend`)
**Required Secret:**
- `EXPO_TOKEN`: Your Expo Access Token.
  - **Purpose**: Allows EAS Build/Update to publish your app.
  - **Creation**: [Expo Dashboard > Access Tokens](https://expo.dev/settings/access-tokens)

## 3. Backend Repo (`Car-Pooling-System-Backend`)
**Optional Secrets (for automated deployment):**
- `RAILWAY_TOKEN`: If using Railway CLI for deployment (currently using git-push).
- `MONGODB_URI`: Connection string for integration tests (if running against real DB).
- `JWT_SECRET`: Secret key for signing tokens during tests.

## 4. Web Repo (`Car-Pooling-System-Web-Frontend`)
**Optional Secrets (for automated deployment):**
- `VERCEL_TOKEN`: If using Vercel CLI for deployment (currently using git-push).

## JSON Configuration
The `config/` folder contains service-specific settings:
- `backend.json`: API URL and health check path.
- `frontend-web.json`: Web URL.

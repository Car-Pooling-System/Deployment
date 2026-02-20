# 🔐 Master Secrets & Configuration Guide

To enable the full CI/CD pipeline, you must configure GitHub Secrets in each repository's settings (**Settings > Secrets and variables > Actions**).

---

## 1. Orchestrator Repo (`carpooling-deployment`)
**Critical for cross-repo triggers:**
- `GH_PAT`: A GitHub **Personal Access Token** (Classic).
  - **Required Scopes**: `repo`, `workflow`.
  - **Why?**: This token allows the Orchestrator to trigger the CI/CD workflows in your Backend, Web, and Mobile repos.
  - **Error Fix**: If you see `Bad credentials`, your token is either expired or missing the `workflow` scope.

---

## 2. Backend Repo (`Car-Pooling-System-Backend`)
- `JWT_SECRET`: Secret key for signing authentication tokens.
- `MONGODB_URI`: (Optional) If you want integration tests to run against a real database instead of the Docker service.

---

## 3. Web Repo (`Car-Pooling-System-Web-Frontend`)
- `VERCEL_TOKEN`: Required if you use the Vercel CLI for deployment.
- `VERCEL_ORG_ID`: Required for Vercel CLI.
- `VERCEL_PROJECT_ID`: Required for Vercel CLI.
- *Note*: If you linked Vercel to GitHub directly, these might not be needed for basic auto-deploy, but are good for advanced control.

---

## 4. Mobile Repo (`Car-Pooling-System-Mobile-Frontend`)
- `EXPO_TOKEN`: **Mandatory**. Your Expo Access Token.
  - **Creation**: [Expo Dashboard > Access Tokens](https://expo.dev/settings/access-tokens).
  - **Why?**: Allows GitHub to build and publish your app to Expo.

---

## 💡 How Workflows Interact
1. **Orchestrator** triggers child workflows via GitHub API (using `GH_PAT`).
2. **Child Workflow** runs locally in its repo (lint, test, build).
3. **Child Workflow** deploys to its provider (Railway, Vercel, Expo) using its own secrets.


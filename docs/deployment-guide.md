# Deployment Guide

This guide outlines the steps to deploy the entire Car Pooling System.

## Prerequisites
- GitHub Personal Access Token (`GH_PAT`) configured in this repository secrets.
- `EXPO_TOKEN` configured in the Mobile repository secrets.
- Hosting accounts (Railway, Vercel) linked to the respective repositories.

## Triggering a Deployment

### Option 1: Manual Trigger (GitHub UI)
1. Go to the **Actions** tab in this repository.
2. Select **Master Deployment Pipeline** from the left sidebar.
3. Click **Run workflow**.
4. Select the environment (Staging/Production).
5. Click **Run workflow**.

### Option 2: CLI Trigger
You can use the provided script to trigger a deployment from your local machine:

```bash
./scripts/deploy-all.sh
```

## Deployment Flow
1. **Backend Deploy**: 
   - Triggers `ci-cd.yml` in `carpooling-backend`.
   - Waits for the `/health` endpoint to return 200 OK.
2. **Web Frontend Deploy**: 
   - Triggered only if Backend deploy succeeds.
   - Deploys to Vercel.
3. **Mobile App Deploy**:
   - Triggered only if Web deploy succeeds.
   - Publishes OTA update via Expo.

## Verification
After deployment, the `health-check.yml` workflow runs automatically (or can be triggered manually) to verify all services are up.

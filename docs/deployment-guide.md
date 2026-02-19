# Deployment Guide

## Automated Deployment
The `carpooling-deployment` repo triggers deployments via GitHub Actions.

### Steps
1.  **Commit Changes**: Push code to `main` branch of any service repo.
2.  **Trigger Master Deploy**:
    - Go to `carpooling-deployment` Actions tab.
    - Select "Master Deployment".
    - Click "Run workflow".
3.  **Monitor**: Use the visualization graph to see Backend -> Web -> Mobile deployment stages.

## Manual Deployment

### Backend
1.  Check `package.json` scripts.
2.  Run `npm run build` (if applicable).
3.  Deploy using Railway CLI: `railway up`.

### Web Frontend
1.  Check `package.json` scripts.
2.  Run `npm run build`.
3.  Deploy using Vercel CLI: `vercel --prod`.

### Mobile Frontend
1.  Check `eas.json`.
2.  Run `eas build --platform all`.
3.  Submit to stores via EAS Submit.

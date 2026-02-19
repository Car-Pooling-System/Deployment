# Troubleshooting Guide

## Deployment Failures

### Backend
- **Issue**: Deployment hangs on "Building".
- **Fix**: Check Dockerfile for large COPY operations. Ensure `.dockerignore` excludes `node_modules`.

### Web Frontend
- **Issue**: "Build folder not found".
- **Fix**: Verify `vite.config.js` output directory matches Vercel settings (default `dist`).

### Mobile
- **Issue**: "EAS project not found".
- **Fix**: Run `eas build:configure` again and link `app.json` correctly.

## Runtime Issues

### CORS Errors
- **Symptom**: Frontend cannot talk to Backend.
- **Fix**: Update Backend `cors` configuration to include Frontend domains (`vercel.app`).

### Database Connection
- **Symptom**: API returns 500 errors on startup.
- **Fix**: Verify `MONGODB_URI` environment variable in Railway dashboard.

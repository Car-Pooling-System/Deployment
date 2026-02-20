# Troubleshooting Guide

## Common Issues

### 1. "Resource not accessible by integration"
**Cause**: The `GH_PAT` token is missing, expired, or lacks permissions.
**Fix**: 
- Generate a new PAT with `repo` and `workflow` scopes.
- Update `GH_PAT` in Repository Secrets.

### 2. Backend Deployment Timeout
**Cause**: Railway deployment took longer than the configured sleep time.
**Fix**: 
- Check Railway logs for build errors.
- Increase the `sleep` duration in `deploy-all.yml`.

### 3. Mobile Build Failed
**Cause**: `EXPO_TOKEN` invalid or missing in the Mobile repo secrets.
**Fix**:
- Renew token at expo.dev.
- Update secret in `Car-Pooling-System-Mobile-Frontend` repo.

### 4. Integration Tests Failing
**Cause**: API or Web URL not reachable from GitHub Actions runner.
**Fix**:
- Verify the `API_URL` and `WEB_URL` environment variables match the deployed environment.
- Check if the services are actually running.

## Debugging Steps
1. **Check Action Logs**: Expand the step that failed in GitHub Actions.
2. **Verify Health**: Run `./scripts/health-check.sh` locally.
3. **Isolate Service**: Try deploying the failing service manually from its own repository to see if the issue is local to that service.

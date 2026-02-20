# CI/CD Strategy

## Philosophy
We follow a **Sequential Deployment Strategy** ensuring that the backend—the source of truth—is always updated and healthy before client applications (Web and Mobile) are updated. This prevents client-side errors caused by missing API endpoints or schema mismatches.

## Pipeline Architecture

### 1. Orchestrator (This Repository)
- Actions as the "Command Center".
- Does not contain application code.
- Contains workflows that trigger workflows in other repositories using `repository_dispatch` or `workflow_dispatch`.

### 2. Child Repositories
- Each repository (Backend, Web, Mobile) contains its own `ci-cd.yml`.
- These workflows conduct:
  - Linting
  - Unit Tests
  - Build/Compile
  - Deployment to Hosting Provider

## Branching Strategy
- **main**: Production-ready code. Deploys to Production environment.
- **develop**: Integration code. Deploys to Staging environment.
- **feature/***: Feature branches. PRs trigger lint/test but no deployment.

## Rollback Policy
If a deployment fails at any stage:
1. The pipeline halts.
2. An alert is sent (via GitHub status/issue).
3. **Manual Rollback**: Use the `rollback.yml` workflow to revert a specific service to the previous stable tag/commit.

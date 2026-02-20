#  Master Secrets & Configuration Guide

To enable the full CI/CD pipeline, you must configure GitHub Secrets in each repository's settings (**Settings > Secrets and variables > Actions**).

---

## 1. Orchestrator Repo (`carpooling-deployment`)
### `GH_PAT` (GitHub Personal Access Token)
- **Where to get it**: [GitHub Settings > Developer Settings > Personal access tokens > Tokens (classic)](https://github.com/settings/tokens/new).
- **Settings**:
  - **Note**: "Carpooling Orchestrator Token"
  - **Expiration**: 30 or 90 days (your choice).
  - **Scopes (CRITICAL)**: Select **`repo`** (all) and **`workflow`**.
- **Usage**: Paste the generated string (starts with `ghp_...`) into the `GH_PAT` secret in your `carpooling-deployment` repo.

---

## 2. Backend Repo (`Car-Pooling-System-Backend`)
### `JWT_SECRET`
- **Where to get it**: This is an arbitrary secret key created by you.
- **How to generate**: Open your terminal and run:
  ```bash
  node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
  ```
- **Usage**: Copy the output string and add it as `JWT_SECRET` in the Backend repo's secrets.

---

## 3. Web Repo (`Car-Pooling-System-Web-Frontend`)
### `VERCEL_TOKEN`
- **Where to get it**: [Vercel Dashboard > Settings > Access Tokens](https://vercel.com/account/tokens).
- **Usage**: Create a token and add it as `VERCEL_TOKEN` in the Web repo's secrets.
- *Note*: You also need `VERCEL_ORG_ID` and `VERCEL_PROJECT_ID` found in your project's `Settings > General` on Vercel.

---

## 4. Mobile Repo (`Car-Pooling-System-Mobile-Frontend`)
### `EXPO_TOKEN`
- **Where to get it**: [Expo Dashboard > User Settings > Access Tokens](https://expo.dev/settings/access-tokens).
- **Usage**: Create a new token and add it as `EXPO_TOKEN` in the Mobile repo's secrets.

---

## 💡 Summary Checklist
| Repository | Secret Name | Source |
| :--- | :--- | :--- |
| **deployment** | `GH_PAT` | GitHub Developer Settings |
| **backend** | `JWT_SECRET` | Terminal (Random string) |
| **web** | `VERCEL_TOKEN` | Vercel Settings |
| **mobile** | `EXPO_TOKEN` | Expo Dashboard |



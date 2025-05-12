# monitoring-tools

## Step 1: Create .env

Make .env from .env.example

```
cp .env.example .env
```

## Step 2: Run this one time cmd before start docker compose

```
docker network create monitoring_net
```

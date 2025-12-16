# platsci2openid

Simple Node.js backend server with Yarn v4 package manager and Keycloak integration.

## Prerequisites

- Node.js 20.x or later
- Docker and Docker Compose
- Yarn v4 (managed via Corepack)

## Getting Started

### Local Development

1. Enable Corepack (if not already enabled):
   ```bash
   corepack enable
   ```

2. Install dependencies:
   ```bash
   yarn install
   ```

3. Start the development server:
   ```bash
   yarn start
   ```

   Or with auto-reload:
   ```bash
   yarn dev
   ```

The server will start on port 3000 by default.

### Available Endpoints

- `GET /` - Returns server information
- `GET /health` - Health check endpoint

### Docker Compose

The project includes a Docker Compose configuration with:
- **Keycloak** (latest version) - Identity and access management
- **PostgreSQL** - Database for Keycloak
- **Backend** - Node.js backend server

#### Start all services:

```bash
docker compose up -d
```

#### Access the services:

- Backend API: http://localhost:3000
- Keycloak Admin Console: http://localhost:8080
  - Username: `admin`
  - Password: `admin`

#### Stop all services:

```bash
docker compose down
```

#### Stop and remove volumes:

```bash
docker compose down -v
```

## Project Structure

```
.
├── src/
│   └── index.js          # Main server file
├── docker-compose.yml    # Docker Compose configuration
├── Dockerfile           # Backend container image
├── package.json         # Project dependencies and scripts
├── .yarnrc.yml         # Yarn v4 configuration
└── README.md           # This file
```

## Environment Variables

- `PORT` - Server port (default: 3000)
- `NODE_ENV` - Node environment (default: development)

## License

ISC
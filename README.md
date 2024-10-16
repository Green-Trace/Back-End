
# Truffle and Ganache with Docker

This repository contains a setup for developing Solidity smart contracts using the **Truffle framework** and **Ganache** for a local blockchain, all within a Dockerized environment.

## Features:
- **Ganache CLI**: A local Ethereum blockchain simulated by Ganache, pre-configured with 1000 accounts and 100 ETH for each account.
- **Truffle Framework**: Truffle is used to compile, migrate, and manage smart contracts.
- **Dockerized Environment**: Both Ganache and Truffle are run in isolated Docker containers.
- **Volume Mounting**: Project files are mapped into the container, enabling development in a Dockerized setup.
  
## Setup Instructions

### 1. Clone the repository
```bash
git clone <repository_url>
cd <repository_directory>
```

### 2. Docker Compose Setup
Make sure Docker and Docker Compose are installed on your system. Then run:

```bash
docker-compose up --build
```

This will build the Docker container, start the Ganache local blockchain, and run the Truffle compile and migrate commands.

### 3. Accessing the Truffle container
If you want to manually interact with the Truffle container, run:

```bash
docker-compose exec truffle bash
```

You can now run Truffle commands inside the container.

### 4. Compile Contracts
```bash
truffle compile
```

### 5. Run Migrations
```bash
truffle migrate --network development
```

## Ganache Configuration

- Network ID: 1719041703477
- Pre-configured with 1000 accounts and 100 ETH per account
- Mnemonic: `muscle earn swing aim cheap protect voyage spare analyst little climb gas`

## Truffle Configuration

Ensure your `truffle-config.js` is set up with the correct network:

```javascript
module.exports = {
  networks: {
    development: {
      host: "ganache-cli",
      port: 8545,
      network_id: "1719041703477",
    },
  },
  compilers: {
    solc: {
      version: "0.8.0",
    },
  },
};
```

## Stopping the Environment
To stop and remove the Docker containers, run:

```bash
docker-compose down
```

## Requirements
- Docker
- Docker Compose
- Node.js (for local development)
- Truffle (installed in the container)

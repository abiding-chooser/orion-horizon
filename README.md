# Orion Horizon (Built for Base)

Orion Horizon is a read-only tool designed for Base Mainnet and Base Sepolia. It helps developers validate network identity, explore blockchain data, and interact with deployed contracts using Coinbase Wallet SDK, while providing verification via Basescan.

---

## Key Features

- **Coinbase Wallet SDK** for seamless connection (EIP-1193)  
- **ChainId Validation** for Base Mainnet (8453) and Sepolia (84532)  
- **Network Snapshot** for retrieving block data, gas prices, and gas usage  
- **Address Inspection** for balance, transaction count, and bytecode  
- **ERC-20 Token Validation** for metadata, total supply, and balance  
- **Basescan Verification** to independently validate contract and address data  

---

## Repository Structure

- **app/orion-horizon.ts**  
  Main script to interact with Coinbase Wallet and retrieve blockchain data via Base RPC.

- **config/base.networks.json**  
  Configuration containing RPC URLs, explorers, and chainIds for both Base Mainnet and Sepolia.

- **contracts/**  
  Solidity contracts deployed to Base Sepolia for testnet validation:
  - `ERC721.sol` — represents non-fungible tokens (NFTs), where each token is unique 
  - `addressBook.sol ` — can be used in various scenarios, such as storing user addresses, participants in a system, or tracking contacts in a decentralized application
  - `arrays.sol` — allows adding, removing, and updating elements in an array 

- **package.json**  
  Project’s dependency manifest, referencing necessary libraries from Coinbase and Base repositories.

- **README.md**  
  Documentation for setting up and using the project, including features and dependencies.

- **scripts/deploy-contracts.sh**  
  Shell script for deploying contracts to Base Sepolia or Base Mainnet.

---

## Supported Networks

- **Base Sepolia**  
  ChainId (decimal): 84532  
  Explorer: [sepolia.basescan.org](https://sepolia.basescan.org)

- **Base Mainnet**  
  ChainId (decimal): 8453  
  Explorer: [basescan.org](https://basescan.org)

---

## Functionality

Orion Horizon allows developers to:
- Connect to **Coinbase Wallet SDK** for wallet access
- Query **Base RPC** for blockchain data, including block info, gas prices, balances, and more
- Inspect **Base network details** and validate addresses and contracts through **Basescan**

All actions are strictly read-only, ensuring no modification of blockchain state.

---

## Dependencies

This repository integrates tools from the Coinbase and Base ecosystems:
- **Coinbase Wallet SDK** for easy wallet connection  
- **OnchainKit** for interacting with Base-native features  
- **Viem** for efficient, type-safe RPC communication  
- Additional dependencies from **Base** and **Coinbase GitHub repositories**

---

## License

MIT License

Copyright (c) 2025 YOUR_NAME

---

## Author Info

GitHub: [https://github.com/your-handle](https://github.com/abiding-chooser)  

Email: abiding-chooser-0z@icloud.com 

## Testnet Deployment (Base Sepolia)

The following contracts have been deployed to Base Sepolia for testnet validation:

**Network**: Base Sepolia  
**ChainId (decimal)**: 84532  
**Explorer**: [sepolia.basescan.org](https://sepolia.basescan.org)

**Contract ERC721.sol address**:  
0xF411BB248A4DF3fF414F582d23a1b1899E8720Fd

Deployment and verification:
- [Deployment link](https://sepolia.basescan.org/address/0xF411BB248A4DF3fF414F582d23a1b1899E8720Fd)
- [Code verification](https://sepolia.basescan.org/0xF411BB248A4DF3fF414F582d23a1b1899E8720Fd/0#code)

**Contract addressBook.sol address**:  
0x5AaE2d2D4CdF4801D1b8157FbCFBD5250471F2D5

Deployment and verification:
- [Deployment link](https://sepolia.basescan.org/address/0x5AaE2d2D4CdF4801D1b8157FbCFBD5250471F2D5)
- [Code verification](https://sepolia.basescan.org/0x5AaE2d2D4CdF4801D1b8157FbCFBD5250471F2D5/0#code)

**Contract arrays.sol address**:  
0x76D7F121d3289DCAA7bF78C6398cCB4694824701 

Deployment and verification:
- [Deployment link](https://sepolia.basescan.org/address/0x76D7F121d3289DCAA7bF78C6398cCB4694824701 )
- [Code verification](https://sepolia.basescan.org/0x76D7F121d3289DCAA7bF78C6398cCB4694824701/0#code)

These testnet deployments ensure the tools are functioning properly before moving to Mainnet.

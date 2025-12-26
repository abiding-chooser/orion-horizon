#!/bin/bash

# Deploy contracts to Base Sepolia or Base Mainnet using Foundry or Hardhat

# Ensure environment variables are set
if [ -z "$PRIVATE_KEY" ]; then
  echo "PRIVATE_KEY is not set. Please set it in the .env file."
  exit 1
fi

if [ -z "$NETWORK" ]; then
  echo "NETWORK is not set. Please specify 'base-sepolia' or 'base-mainnet'."
  exit 1
fi

# Set RPC URL based on the selected network
if [ "$NETWORK" == "base-sepolia" ]; then
  RPC_URL="https://sepolia.base.org"
  CHAIN_ID="84532"
elif [ "$NETWORK" == "base-mainnet" ]; then
  RPC_URL="https://mainnet.base.org"
  CHAIN_ID="8453"
else
  echo "Invalid network specified. Use 'base-sepolia' or 'base-mainnet'."
  exit 1
fi

# Set the contract path and deploy command (assuming Foundry is being used here)
CONTRACT_PATH="src/OrionContract.sol:OrionContract"

echo "Deploying contract to $NETWORK..."

# Run the Foundry deploy command
forge create \
  --rpc-url $RPC_URL \
  --private-key $PRIVATE_KEY \
  --chain-id $CHAIN_ID \
  $CONTRACT_PATH

if [ $? -eq 0 ]; then
  echo "Deployment successful."
else
  echo "Deployment failed."
  exit 1
fi

#!/bin/bash
# 1. Ensure the wallet is loaded (Autograder might need this)
bitcoin-cli -regtest loadwallet "builderswallet" > /dev/null 2>&1 || true

# 2. Generate an address and mine coins so the balance is > 0
ADDR=$(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$ADDR" > /dev/null 2>&1

# 3. Output ONLY the balance
bitcoin-cli -regtest -rpcwallet="builderswallet" getbalance

# 🧠 The Great Ether Heist – Solidity Challenge Report

## 🔗 Key Details

- 🧾 **My Whitelisted Wallet Address**: `0xE9aEfF2e55e0B537a89995465cf49EAA4737cfb7`  
- 🏦 **Selfdestruct contract address **: `0xc6ca9e9efef41ab2dd43e39f56aa4f0ac4eb07e1cb9d1d4826da06a56e341181
`  

## 🚀 Strategy

To complete the challenge, I implemented a multi-step exploit using a combination of smart contract behavior, precise Ether transfers:

1. **SelfDestructSender Deployment**  
   Deployed a `SelfDestructSender` contract that sends exactly **0.0005 Ether** to the `EtherVault` via `selfdestruct()`. This bypassed the standard `deposit()` restrictions by directly transferring Ether to the contract.

2. **Big Spender Qualification**  
   Deposited **0.03 Ether** using the `deposit()` function, qualifying my address for the **Big Spender** tier.

3. **Guessing the Magic Word**  
   Identified the hashed string inside the contract and tried using the `keccak256` to deduce the original plaintext string.I was not able to do this. I then read through the code and found a secret phase "Solidity" which also failed.

---

## ⚠️ Challenges Faced

- **Ether Precision via Self-Destruct**  
  Achieving the **exact 0.0005 Ether** transfer via `selfdestruct()` required careful contract setup, as it circumvents the normal flow.

- **Hash Matching**  
  Decoding the hashed magic word using `keccak256` was a challenge.

---

## ✅ Outcome

🎉 I was able to make successful withdrawals at the **Big Spender rate** from the `EtherVault` contract after fulfilling all prerequisites.

---

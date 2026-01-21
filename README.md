# On-Chain Identity Registry (SBT)

This repository implements a Decentralized Identity (DID) system using **Soulbound Tokens (SBTs)**. Unlike standard NFTs, SBTs are non-transferable, making them ideal for representing "souls" (wallets) and their associated traits or credentials.

### Key Concepts
* **Non-Transferability:** Once minted to an address, the token cannot be moved, ensuring the credential remains tied to the owner.
* **Attestations:** Trusted issuers (e.g., universities, KYC providers) can mint credentials to users' wallets.
* **Verifiable Claims:** Third-party protocols can check a user's balance of specific SBTs to grant access (Gatekeeping).

### Use Cases
1. **KYC/AML Compliance:** Proof of personhood without revealing private data.
2. **Web3 CV:** Proof of contribution or certification.
3. **Credit Scoring:** On-chain history used for undercollateralized lending.



### Security
* Only authorized `MINTER_ROLE` addresses can issue tokens.
* Included logic for "Revocation" in case of fraud or credential expiration.

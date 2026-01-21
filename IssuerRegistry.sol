// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract IssuerRegistry is Ownable {
    mapping(address => bool) public isTrustedIssuer;

    constructor() Ownable(msg.sender) {}

    function addIssuer(address issuer) external onlyOwner {
        isTrustedIssuer[issuer] = true;
    }

    function removeIssuer(address issuer) external onlyOwner {
        isTrustedIssuer[issuer] = false;
    }
}

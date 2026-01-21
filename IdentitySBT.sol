// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract IdentitySBT is ERC721, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    uint256 private _nextTokenId;

    event AttestationIssued(address indexed to, uint256 tokenId);

    constructor() ERC721("SoulboundCredential", "SOUL") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function issueIdentity(address to) public onlyRole(MINTER_ROLE) {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
        emit AttestationIssued(to, tokenId);
    }

    // Override transfer functions to disable them
    function transferFrom(address from, address to, uint256 tokenId) public override {
        revert("SBT: Soulbound tokens are non-transferable");
    }

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) public override {
        revert("SBT: Soulbound tokens are non-transferable");
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}

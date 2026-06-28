// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract devNFT is ERC721, Ownable {
    uint256 private _tokenIdcounter;
    string private _baseTokenURI;

    constructor(string memory baseURI)
        ERC721("dev NFT", "DVNFT")
        Ownable(msg.sender)
    {
        _baseTokenURI = baseURI;
    }

    function mint(address to) external onlyOwner {
        _tokenIdcounter++;
        _safeMint(to, _tokenIdcounter);
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }
}

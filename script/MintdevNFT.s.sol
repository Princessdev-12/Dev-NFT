// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Dev-NFT.sol";

contract MintdevNFT is Script {
    function run() external {
        vm.startBroadcast();
        devNFT nft = devNFT(0x5468Cf7F578F56DaAf3119128E00FD223B9204bb);
        nft.mint(0xA08233e57c8D2a4c4a12bdBd4BA42A5D90F22e54);
        vm.stopBroadcast();
    }
}
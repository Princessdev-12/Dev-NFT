// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Dev-NFT.sol";

contract DeployDevNFT is Script {
    function run() external {
        vm.startBroadcast();
        new devNFT("ipfs://QmcuWsHoiNiDmNt7w8SLrqtJmJo3SdVTStmjbjqBJPiy6o");
        vm.stopBroadcast();
    }
}

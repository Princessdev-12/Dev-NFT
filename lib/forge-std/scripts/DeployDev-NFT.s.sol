//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/DevNFT.sol";

contract DeployDevNFT is script {
    function run () external {
        vm.startBroadcast()
        NewDev-NFT ("ipfs://bafybeifzzejbpr6jp2t5dqbklh6ziag4dmvwlgihadievp4r6mj3wcdfra/1.Json")
        vm.stopBroadcast(;)
    }
}
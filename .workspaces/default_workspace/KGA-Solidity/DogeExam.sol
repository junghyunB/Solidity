// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract Doge {
    function catchphrase() public pure returns(string memory) {
        return "So WOW Crypto Doge";
    }
}

contract BabyDoge is Doge {
    function wowCatchPhrase() public pure returns(string memory) {
        return "Such Moon BabyDoge";
    }
}
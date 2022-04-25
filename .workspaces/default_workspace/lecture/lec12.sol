// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec12 {

    event info(string name, uint256 money);

    function sendMoney() public {
        emit info("ByunJungHyun", 1000);
    }
}
// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//두개이상의 상속 함수명이 같을떄는 함수에 overriding 해줘야함

contract Father {
    uint256 public fatherMoney = 100;
    function getFahterName() public pure returns(string memory) {
        return "ByunJungHyun";
    }

    function getMoney() public view virtual returns(uint256) {
        return fatherMoney;
    }
}

contract Mother {
    uint256 public motherMoney = 500;
    function getMotherName() public pure returns(string memory) {
        return "YJ";
    }

    function getMoney() public view virtual returns(uint256) {
        return motherMoney;
    }
}

contract Son is Father, Mother {

    function getMoney() public view override(Father,Mother) returns(uint256) {
        return fatherMoney + motherMoney;
    }

}


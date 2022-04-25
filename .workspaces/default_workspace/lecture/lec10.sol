// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;
//상속, 오버라이딩

contract Father {
    string public familyName = "Byun";
    string public givenName = "JungHyun";
    uint256 public money = 100;


    constructor(string memory _givenName) public {
        givenName = _givenName;
    }

    function getFamilyName() view public returns(string memory) {
        return familyName;
    }
    function getGivenName() view public returns(string memory) {
        return givenName;
    }
    function getMoney() view virtual public returns(uint256) {
        return money;
    }
}

contract Son is Father("James"){
    // constructor() Father("James"){

    // }
    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }

    function getMoney() view override public returns(uint256) {
        return money + earning;
    }
}
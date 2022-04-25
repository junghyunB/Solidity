// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract SimpleStateExam {
    uint256 public num;

    function setNum(uint256 _num) public {
        num = _num;
    }

    function getNum() public view returns (uint256) {
        return num;
    }
}
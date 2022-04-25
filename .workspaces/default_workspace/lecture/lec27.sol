// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//함수의 리턴명

contract lec29 {
    //리턴명이 없는 함수
    function add(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        uint256 total = _num1 + _num2;
        return total;
    }
    //리턴명이 있는 함수
    //리턴할 값이 많아지면 선언해주면 나중에 봤을때 쉽게 기억 가능
        function add2(uint256 _num1, uint256 _num2) public pure returns (uint256 total) {
        total = _num1 + _num2;
        return total;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract MemStorageExam {
    // storage : 대부분의 변수, 함수들이 저장 되고, 영속적으로 저장되어서 가스 비용이 비싸다.
    // memory : 함수의 파라미터, 리턴값, reference type이 주로 저장되고, storage처럼 영구적이지 않아서 함수내에서만 유효 하기 떄문에 storage보다 가스 비용이 싸다.

    function getString(string memory _str) public pure returns (string memory) {
        return _str;
    }

    function getInt(uint256 _num) public pure returns (uint256) {
        return _num;
    }
}
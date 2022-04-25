// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec16 {

    uint256[] public ageArray;
    // 배열 인덱스 갯수 고정 선언
    uint256[10] public ageArrayfixed;
    // 미리 배열몇개를 선언
    string[] nameArr = ["JH","JH2", "JH3"];


    function AgeLength() public view returns(uint256) {
        return ageArray.length;
    }

    function AgePush(uint256 _age) public {
        ageArray.push(_age);
    }

    function AgeGet(uint256 _index) public view returns(uint256) {
        return ageArray[_index];
    }

    function AgePop() public {
        ageArray.pop();
    }

    function AgePop(uint256 _index) public {
        delete ageArray[_index];
    }

    function AgeChange(uint256 _index, uint256 _age) public {
        ageArray[_index] = _age;
    }
}
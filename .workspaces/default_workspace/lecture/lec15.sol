// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//maping key, value 
//length를 구할수는 없음
contract lec15 { 

    //key : uint256, value : uint256
    mapping(uint256 => uint256) private ageList;
    mapping(string => uint256) private priceList;
    mapping(uint256 => string) private nameList;

    function setAgeList(uint256 _index, uint256 _age) public {
        ageList[_index] = _age;
    }

    function getAge(uint256 _index) public view returns(uint256) {
        return ageList[_index];
    }

    function setPriceList(string memory _index1, uint256 _price) public {
        priceList[_index1] = _price;
    }

    function getPrice(string memory _index1) public view returns(uint256) {
        return priceList[_index1];
    }

    function setNameList(uint256 _index2, string memory _name) public {
        nameList[_index2] = _name;
    }

    function getName(uint256 _index2) public view returns(string memory) {
        return nameList[_index2];
    }

}
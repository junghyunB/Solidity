// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//Array, map 사용시 주의할점 변수가 바뀐다고 map, array에 있는 값들이 변하진 않는다 update 함수를 만들어 변수가 바뀔떄마다 리셋 해주어야한다.

contract lec17 {
    uint256 public num = 30;
     mapping(uint256 => uint256) private ageList;
     uint256[] public agearr;

    function changeNum(uint256 _index) public {
        num = _index;
    }

    function setAgeList() public {
        ageList[0] = num;
    }

     function getAge()public view returns(uint256) {
        return ageList[0];
    }

    function PushAge() public {
        agearr.push(num);
    }

    function getAgearr() public view returns(uint256) {
        return agearr[0];
    }

    function updataAgearr() public {
        agearr[0] = num;
    }

        function updataAgemap() public {
        ageList[0] = num;
    }
}
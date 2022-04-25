// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;
contract Father {
    event FatherName(string name);
    function Who() public virtual {
        emit FatherName("ByunJungHyun");
    }
}
contract Mother {
    event MotherName(string name);
    function Who() public virtual {
        emit MotherName("YJ");
    }
}

//상속의 순서 가장최신의 컨트랙트만 가져옴

contract Son is Mother, Father{
    function Who() public override(Father, Mother) {
        super.Who();
    }
}
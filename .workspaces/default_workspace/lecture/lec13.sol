// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//super 길어졌을떄 전체를 한번에 다가져올 수 있음.

contract Father {
    event FatherName(string name);
    function Who() public virtual {
        emit FatherName("ByunJungHyun");
    }
}

contract Son is Father{
    event sonName(string name);
    function Who() public override {
        super.Who();
        emit sonName("ByunPark");
    }
}
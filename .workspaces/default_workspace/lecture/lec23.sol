// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//에러 핸들러 : require, revert, assert, try/catch

contract lec23 {

    /*
    0.4.22 ~ 0.7.X
    assert : gas를 다 소비한후, 특정한 조건에 부합하지 않으면 ( false 일 때 ) 에러를 발생 시킨다.
    revert : 조건없이 에러를 발생 시키고, gas를 환불 해준다.
    require : 특정한 조건에 부합하지 않으면 ( false 일 때 ) 에러를 발생키기고, gas를 환불 시켜준다.
    */
    // 3000000 gas
    function assertNow() public pure {
        assert(false); // test용 ( 실용적이지 못함 )
    }
    //	21322 gas 
    function revertNow() public pure {
        revert("error!!!"); // if조건절에 조건을 주거나 require을 많이씀 require = if + revert;
    }

    function requireNow() public pure {
        require(false, "occurred!!");
    }

    function onlyAdults(uint256 _age) public pure returns(string memory) {
        if(_age < 19) {
            revert("You ar not allowed to pay for the cigarette");
        }
        return "Your payment is succeded";
    }

    function onlyAdults2(uint256 _age) public pure returns(string memory) {
        require(_age > 19, "You are not allowed to pay for the cigarette"); // 조건문이 false일때 에러를 발생시킴. require의 특징.
        return "Your payment is succeded";
    }
}
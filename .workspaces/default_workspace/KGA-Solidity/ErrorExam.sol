// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract ErrorExam {
    function testRequire(uint256 _i) public pure {
        require(_i > 10,"Input must be greater than 10");
    }

    function testRevert (uint _i) public pure {
        if(_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num = 0;
    // assert는 절대 거짓이 되어서는 안되는 코드를 확인하는 데 사용 된다.
    // assertion 실패는 아마도 버그가 있음을 의미한다.
    function testAssert() public view {
        assert(num == 0);
    }

    // custom error

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
       uint256 bal = address(msg.sender).balance;
        if(bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
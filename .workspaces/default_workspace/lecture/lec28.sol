// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//modifier

contract lec28 {
    
    modifier onlyAdults {
        revert ("You are not allowed to pay for the cigarette");
        // 아래함수가 어느 자리에 적용이 되는지
        _;
    }

    function BuyCigarette() public onlyAdults pure returns(string memory) {
        return "Your payment is succeeded";
    }

    modifier onlyAdults2(uint256 _age) {
        require (_age > 18, "You are not allowed to pay for the cigarette");
        // 아래함수가 어느 자리에 적용이 되는지
        _;
    }

        function BuyCigarette2(uint256 _age) public onlyAdults2(_age) pure returns(string memory) {
        return "Your payment is succeeded";
    }

    uint256 public num = 5;
    modifier numChange {
        _;
        num = 10;
    }

    function numChangeFunction() public numChange {
        num = 15;
    }
    
}
// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// 외부 스마트 컨트랙 생성 할 떄

contract character {
    string private name;
    uint256 private power;

    constructor(string memory _name, uint256 _power) {
        name = _name;
        power = _power;
    }
}

contract runner {
    event catchOnly(string _name, string _err);

    function playTryCatch(string memory _name, uint256 _power) public returns(bool) {
        
        try new character(_name,_power) {
            //try/catch안에서 revert/require/assert를 넣어주면 프로그램이 작동 종료된다.
            return(true);
        } catch {
            emit catchOnly("catch", "Errors!!!");
            return(false);
        }
    }
}

// 스마트 컨트랙 내에서 함수를 부를떄

contract runner2 {
    function simple() public pure returns(uint256) {
        return 4;
    }

    event catchOnly(string _name, string _err);
    function playTryCatch() public returns(uint256, bool) {

        // this = runner2()를 의미
        try this.simple() returns(uint256 _value) {
            return(_value, true);
        }
        catch {
            emit catchOnly("catch", "Errors!!");
            return(0, false);
        }
    }

}
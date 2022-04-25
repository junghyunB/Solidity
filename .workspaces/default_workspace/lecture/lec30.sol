// SPDX-License-Identifier : GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract lec30 {

    /*
    payable 
    payable은 이더/토큰과 상호작용시 필요한 키워드라고 생각하면 간다.
    즉, send, transfer, call을 이용하여, 이더를 보낼때 payable이라는 키워드가 필요하다.
    이 payable은 주로 함수, 주소, 생성자에 붙여서 사용된다.

    msg.value
    msg.value는 송금보낸 코인의 값이다.

    이더를 보내는 3가지
    1. send : 2300gas를 소비, 성공여부를 true 또는 false로 반환
    2. transfer : 2300gas 소비, 실패시 에러를 발생
    3. call : 가변적인 gas 소비 (gas값 지정 가능), 성공여부를 true 또는 false로 리턴 재진입 (reentrancy)공격 위험성 있음, 2019년 12월 이후 call사용을 추천.
    */

    event howMuch(uint256 _value);

    function sendNow(address payable _to) public payable { 
        bool sent = _to.send(msg.value); // return true or false
        require (sent, "Failed to send either");
        emit howMuch(msg.value);
    }

    function transferNow(address payable _to) public payable {
        _to.transfer(msg.value);
        emit howMuch(msg.value);
    }

    function callNow(address payable _to) public payable {
        // ~ 0.7
        // ( booL sent, ) = _to.call.gas(1000).vaLue(msg.value)("");
        // require (sent, "Failed to send either");

        // 0.7 ~
        (bool sent, ) = _to.call{value: msg.value, gas:1000}("");
        require(sent, "Failed to send Ether");
        emit howMuch(msg.value);
    }
    
}
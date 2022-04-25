// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract HotelRoom {
    enum Statuses { Vacant, Occupied }
    Statuses curStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor() public {
        owner = msg.sender;
        curStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(curStatus == Statuses.Vacant, "Currently occupied");
        _;
    }

    modifier costs (uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provider.");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        curStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
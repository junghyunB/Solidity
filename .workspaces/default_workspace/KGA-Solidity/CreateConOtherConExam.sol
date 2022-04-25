// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13;

contract Car {
    address public owner;
    string public model;
    address public carAddr;


    constructor(address _owner, string memory _model) payable {
        owner = _owner;
        model = _model;
        carAddr = address(msg.sender); // 어떤 버전은 this
    }
}

contract CarFactory{
    bytes32 public mysalt;

    constructor() {
        mysalt = keccak256("HelloWorld11231");
    }
    Car[] public cars;

    function createCar(address _owner, string memory _model) public {
        Car car = new Car(_owner, _model);
        cars.push(car);
    }

    function createAndSendEther(address _owner, string memory _model) public payable {
        Car car = (new Car){value: msg.value}(_owner, _model);
        cars.push(car);
    }

    function createCar2(
        address _owner,
        string memory _model,
        bytes32 _salt
    ) public {
        Car car = (new Car){salt: _salt}(_owner, _model);
        cars.push(car);
    }

    function create2AndSendEther(
        address _owner,
        string memory _model
        //bytes32 _salt
    ) public payable {
        Car car = (new Car){value: msg.value, salt: mysalt}(_owner, _model);
        cars.push(car);
    }

    function getCar(uint _index) public view returns(
        address owner,
        string memory model,
        address carAddr,
        uint balance
    ) {
        Car car = cars[_index];

        return (car.owner(), car.model(), car.carAddr(), address(car).balance);
    }
}
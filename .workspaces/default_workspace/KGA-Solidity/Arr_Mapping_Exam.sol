// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract ArrCont {
    //Arrays 
    uint[] public uintArr = [1, 2, 3];
    string[] public strArr = ["James Hetfield", "kirk Hammet", "Robert Trujillo", "Las Ulrich"];
    string[] public values;
    uint[][] public arr2d = [
        [10, 20, 30], 
        [40, 50, 60]
    ];

    function addValue(string memory _value) public {
        values.push(_value);
    }
    function valueCount() public view returns(uint) {
        return values.length;
    }

        //mapping
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "James Hetfield";
        names[2] = "Kirk Hamet";
        names[3] = "Bruce Lee";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
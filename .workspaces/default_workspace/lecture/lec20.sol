// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

//for, while, do while 반복문

contract lec20 {

    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South Korea", "North Korea", "USA", "China", "Japen"];

    function forLoopEvents() public {
        for(uint256 i = 0; i < countryList.length; i++) {
            emit CountryIndexName(i, countryList[i]);
        }
    }

    function whileLoopEvents() public {
        uint256 i = 0;
        while(i < countryList.length) {
            emit CountryIndexName(i, countryList[i]);
            i++;
        }
        
    }

    function dowhileLoopEvents() public {
        uint256 i = 0;
        do {
            emit CountryIndexName(i, countryList[i]);
            i++;
        } while(i > countryList.length);
    }
}
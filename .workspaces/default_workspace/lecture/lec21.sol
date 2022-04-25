// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// continue, break

contract lec21 {
   event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South Korea", "North Korea", "USA", "China", "Japen"];

    function useContinue() public {
        for(uint256 i = 0; i < countryList.length; i++) {
            if(i % 2 == 1) {
                continue;
            }
            emit CountryIndexName(i, countryList[i]);
        }
    }

    function useBreak() public {
        for(uint256 i = 0; i < countryList.length; i++) {
            if(i ==2 ) {
                break;
            }
            emit CountryIndexName(i, countryList[i]);
        }
    }
}
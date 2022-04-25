// SPDX-License-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// linear search

contract lec21 {

   event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South Korea", "North Korea", "USA", "China", "Japen"];

    function linearSearch(string memory _search) public view returns(uint256, string memory) {
        for (uint256 i = 0; i < countryList.length; i++) {

            // solidity에서 string의 값은 원래 비교가 불가능함 그래서 bytes로 변환을 시켜주고 내장함수 keccak256을 이용하여 해쉬화를 시켜 비교해줌
            if(keccak256(bytes(countryList[i])) == keccak256(bytes(_search))) {
                return (i, countryList[i]);
            }
        }

        return(0, "Nothing");
    }

}
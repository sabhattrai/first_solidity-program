// SPDX-License-Identifier: MIT
pragma solidity >0.8.16;
contract simpleStorage{
    uint256 number;
    mapping(string =>uint256) public favoriteNumber;
    struct People{
        uint256 number;
        string name;
    }
    People[] public people;
    function store(uint256 _number) public{
        number=_number;
    }
    function retrive() public view returns(uint256){
        return number;
    }
    function addPerson(string memory _name,uint256 _number)public{
        people.push(People(_number,_name));
        favoriteNumber[_name]=_number;
}
}
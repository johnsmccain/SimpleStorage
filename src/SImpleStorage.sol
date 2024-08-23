// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract SimpleStorage {
    constructor (){}
    struct Person {
        string name ;
         uint256 number;
    }

    Person[] public people;
    function get(uint256 _index) public view returns (Person memory){
        return people[_index];
    }

    function set(uint256 _value, string memory _name) public {
        Person memory person = Person({
            name: _name,
            number: _value
        });
        people.push(person);
    }
}
// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Identity{
    string name;
    uint age;

//in Solitdity 0.7+ the constructor visibility is ignored so public can't written
    constructor(){
        name = "Mr.X";
        age = 23;
    }

    function getName() view public returns (string memory){
        return name;
    }

    function getAge() view public returns (uint){
        return age;
    }

    //For changement
    //We can use this as many times we need in the deploy section 
    function setAge() public{
        age += 1;
    }
}
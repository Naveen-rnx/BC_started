// SPDX-License-Identifier: MIT

pragma solidity >= 0.5.0 < 0.9.0;

//The varaibles that declared at contract level are know as state variable
contract state{
    // For example
    uint public age; // This is a state variable
    uint public num;
    //if we use this after the declaration of variable age
    //age = 10; // comiplarion error 

    //if we have to assign new age we have to assign in the variable or below

    constructor () {
        age = 10;
    }
    
    //another method
    function setAge() public {
        age = 20;
    }
}
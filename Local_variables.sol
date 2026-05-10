// SPDX-License-Identifier: MIT

pragma solidity >= 0.5.0 < 0.9.0;

contract local{

        //we don't use memory int cotract level

    // function store() pure public returns(uint , string memory , string memory){
    //     uint age = 10; // store in stack not in contract storage 

    //      // Bydefault store in storage means this only define at contrace level (declare) 
    //     //for use this in Function we have a use a keyword "memory" 
    //     //If we don't use the string to return then it also throw the error so either use it or delete it
    //     string memory name = "Mr.X"; 
    //     string memory city = "Dholakpur";
    //     return (age , name , city);
    // }

    //to seprate return (we don't need to write it in solidity)

    function store() pure public returns (uint age , string memory name , string memory city){
        age = 10;
        name = "Mr.X";
        city = "Dholakpur";
    }

}
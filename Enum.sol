// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract demo{
    enum user {allowed , notallowed , hold} //user is of enum type
                //0           1         2
    user public u1 = user.allowed;

    uint public prize = 1000;

    function given() public{
        if(u1 == user.allowed){
            prize = 0;
        }
    }

    function change() public{
        u1 = user.notallowed;
    }
}
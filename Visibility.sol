// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract visibility{
    function f1() public pure returns(uint){
        return 1;
    }

    function f2() private pure returns(uint){
        return 2;
    }

    function f3() internal pure returns(uint){
        //uint x = f4(); //error 
        //uint x = f2(); // f1 //unsed till this 
        return 3;
    }

    function f4() external pure returns(uint){
        return 4;
    }
}

contract letssay is visibility{
    //uint public bx = f2();//private ca't be accessed
    uint public bx = f3();//internal can be accessed and public 
    //we cant use f4 because letssay is inheriting the visibility and it shown in the deploy and we are calling the 
    //function within the contract so its not posible 
}

contract outside{
    visibility obj = new visibility();
    uint public calling = obj.f1(); // outside so external and public
}
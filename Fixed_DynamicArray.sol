// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Array{
    
    //Fixed Array

    //call for what index you want in the array
    uint[4] public nums = [10 , 20 , 30 , 100];
    //if we write greater then index in the call of deploy we get nothing

    function setter(uint index , uint value) public{
        nums[index] = value;
    } 
    function length() public view returns(uint){
        return nums.length; 
    } 

    //Dynamic Array

    uint[] public arr;

    function push(uint n) public{
        arr.push(n); 
    }
    function pop() public{
        arr.pop();
    }
    function length2() public view returns(uint){
        return arr.length;
    }
}
// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract loops{
    uint[4] public nums; 

    uint public count;

    function loop() public {
        // while(count < nums.length){
        //     nums[count] = count;
        //     count++;
        // }

        // for(uint i=0; i<nums.length; i++){
        //     nums[i] = i;
        //     count++;//using as a length operation
        // }

        do{
            nums[count] = count;
            count++;
        } while(count < nums.length);

    }

    //if - else

    function check(int a) public pure returns(string memory){
        string memory value;

        if(a > 18){
            value = "Votable";
        }
        else{
            value = "Not Votable";
        }
        return value;
    }

    //Boolean

    bool public isVotable;

    function boolean(uint a) public returns(bool){
        if(a > 18){
            isVotable = true;
        }
        return isVotable;
    }

}
// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

// contract pay{

//     address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

//     function payEther() public payable{
//         //we dont'nt need to code anything for this base case as this can take ether for the contract
//     }

//     function GetBalance() public view returns(uint){
//         return address(this).balance; // this contract's address balance check and retrun
//     }

//     //function to pay ether from contract to a particular address
//     function send() public{
//         //now we want to transfer ether so we don't use payable keyword because it send to a address not function
//         //user.transfer(address(this).balance); // transfer all the balance to the user
//         bool success;
//         (success , ) = user.call{value : 1 ether}(""); //(abi.encodeWithSignature("payEther()")) this is a call function to send ether to a particular function in a contract
//     }
// }


   contract TransferEther {

    // jis account me ether bhejna hai
    address payable receiver =
        payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    // contract me ether add karne ke liye
    function addEther() public payable {

    }

    // contract ka balance check
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // contract se 1 ether receiver ko bhejna
    function sendEther() public {

        (bool success, ) =
            receiver.call{value: 1 ether}("");

        require(success, "Transfer Failed");
    }
}
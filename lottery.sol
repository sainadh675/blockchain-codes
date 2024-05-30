// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract lottery{
    address public manager;
    address payable[] player;
    address payable winner; 

    constructor(){
        manager=msg.sender;
    }
    function participate()public payable {
        require(msg.value==1 ether,"please pay 1 ethe only");
        player.push(payable (msg.sender));
    }
    function getbalance()public view returns (uint){
        return address(this).balance;
    }
}
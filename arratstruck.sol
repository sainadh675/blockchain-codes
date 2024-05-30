// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract arraystruck{
    struct Student{
        string name;
        uint roll;
        bool pass;
    }
    Student[4] public s;

    function adddetails(uint index,string memory _name,uint _roll,bool _pass)public {
        s[index]=Student(_name,_roll,_pass);
    }

    function getdetails(uint index)public view returns (Student memory){
        return s[index];
    }
}
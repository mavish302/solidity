//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

abstract contract BaseContract{
    int public x;
    address public owner;
    
    constructor(){
        x=5;
        owner = msg.sender;
    }
    
    function setx(int _x)public virtual ;
}

contract A is BaseContract{
    int public y=3;
    function setx(int _x)public override{
        x=_x;
    }
}

//SPDX-License-Identifier:MIT

pragma solidity ^0.6.0;

import "./Telephone.sol";

contract Mediator{
    address public owner;
    Telephone public telephone;

    constructor(address _telephoneAddress) public{
        telephone = Telephone(_telephoneAddress);
    }

    fallback() external payable{
        address(telephone).call(msg.data);
    }

    receive() external payable{
        
    }
}
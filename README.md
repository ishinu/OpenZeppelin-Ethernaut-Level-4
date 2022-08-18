# OpenZeppelin Ethernaut Level 4 

Wise use of `call opcode` which works in context of the called contract and changes `msg.sender` & `msg.data` during multiple external calls.

Our instance address : `0xC68f749cA7370768189C994980A913515872cC52`.

An example we posted in [previous] (https://github.com/ishinu/Phishing-Attack-with-tx.origin) repository named `Phishing with tx.origin` had similar concept. 

If code works in Remix-IDE and not in Rinkeby, possibly it's lacking gas for multiple external calls but not reverting since one call is successfully executing. 
- Increase gas : `In metamask,select Advanced Options, and enable *manual* gas fees option and you will be able to manually enter Gas Price (GWEI) and Gas Limit during every new transaction request.`

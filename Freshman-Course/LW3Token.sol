//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//Import ERC20 Contract from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract LW3Token is ERC20{

    constructor(string memory _name, string memory _symbol) 
    ERC20(_name, _symbol) 
    {    
        //Get some Tokens for ourselves
        //msg.sender is the person deploying the contract
        _mint(msg.sender, 1000 * (10 ** 18));
    } 

    function mint() public {
        _mint(msg.sender, 1000 * (10 ** 18));
    }
}

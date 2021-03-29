//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/a3712a32881a0815253af0d2e43f89d68097385b/contracts/token/ERC20/ERC20.sol";

contract STD is ERC20 {
    
    constructor() ERC20("STD", "Student Spark Coin")  {
        _mint(msg.sender,1000000 *(10** uint256(decimals())));
        
    }
}
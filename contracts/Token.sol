//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NBXToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 100000 * (10**18));
    }
}

// contract Token {
//     string public name = "NBX Token";
//     string public symbol = "NBX";
//     uint256 public totalSupply = 1000000;
//     mapping(address => uint256) balances;

//     constructor() {
//         balances[msg.sender] = totalSupply;
//     }

//     function transfer(address to, uint256 amount) external {
//         require(balances[msg.sender] >= amount, "Not enough tokens");
//         balances[msg.sender] -= amount;
//         balances[to] += amount;
//     }

//     function balanceOf(address account) external view returns (uint256) {
//         return balances[account];
//     }
// }

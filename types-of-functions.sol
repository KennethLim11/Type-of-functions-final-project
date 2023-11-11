// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";


contract YourToken is ERC20 {
    address public Owner;
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        Owner =msg.sender;
        _mint(msg.sender, initialSupply);
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == Owner, "You should be the owner of the contract");
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}

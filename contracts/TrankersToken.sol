// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TrankersToken is ERC20, Ownable {

    constructor() ERC20("TrankersToken", "TRT") {
        _mint(msg.sender, 20000);
    }

    function decimals() public view virtual override returns (uint8) {
        return 0;
    }

    function mint(address to_, uint256 amount) public onlyOwner {
        require(to_ != address(0), "to address is invalid");
        require(amount > 0, "amount is invalid");
        _mint(to_, amount);
    }

    function burnFrom(address account, uint256 amount) public virtual {
        _burn(account, amount);
    }
}
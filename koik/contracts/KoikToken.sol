pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract KoikToken is ERC20 {
    address private _bep20deployer;

    constructor() ERC20("EatEarn", "EAE") {
        _bep20deployer = msg.sender;
        _mint(msg.sender, 22000000 * (10**18)); // 22 million
    }

    /**
     * @dev To make the token fully BEP-20 compatible. No real usage
     */
    function getOwner() external view returns (address) {
        return _bep20deployer;
    }
}

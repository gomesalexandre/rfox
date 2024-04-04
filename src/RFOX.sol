// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// TODO(gomes): import from OpenZeppelin
interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract FOXStaking {
    IERC20 public immutable foxToken;
    mapping(address => uint256) public balances;

    event Staked(address indexed user, uint256 amount);

    constructor(address _foxTokenAddress) {
        foxToken = IERC20(_foxTokenAddress);
    }

    function stake(uint256 _amount) external {
        require(_amount > 0, "Cannot stake 0");
        balances[msg.sender] += _amount;
        bool sent = foxToken.transferFrom(msg.sender, address(this), _amount);
        require(sent, "Token transfer failed");

        emit Staked(msg.sender, _amount);
    }
}

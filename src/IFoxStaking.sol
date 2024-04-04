// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IFOXStaking {
    /// @notice Allows a user to stake a specified amount of FOX tokens.
    /// @param amount The amount of FOX tokens to stake.
    function stake(uint256 amount) external;

    /// @notice Allows a user to unstake their FOX tokens after the cooldown period.
    /// @param amount The amount of FOX tokens to unstake.
    function unstake(uint256 amount) external;

    /// @notice Returns the staked balance of a user.
    /// @param user The address of the user.
    /// @return The amount of FOX tokens staked by the user.
    function balanceOf(address user) external view returns (uint256);

    /// @notice Allows a user to claim their staking rewards.
    function claimRewards() external;

    /// @notice Sets or updates the ThorChain address for receiving rewards.
    /// @param runeAddress The ThorChain address for receiving staking rewards.
    function setRuneAddress(address runeAddress) external;
}


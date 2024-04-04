// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @title WIP high-level interface for FOX token staking contract
/// @notice This interface outlines the functions for staking FOX tokens, managing RUNE addresses for rewards, and claiming 'em.
interface IFOXStaking {
    /// @notice Allows a user to stake a specified amount of FOX tokens and assign a RUNE address for rewards - which can be changed later on.
    /// @param amount The amount of FOX tokens to be staked.
    /// @param runeAddress The ThorChain (RUNE) address where rewards will be sent.
    function stake(uint256 amount, address runeAddress) external;

    /// @notice Allows a user to unstake a specified amount of their staked FOX tokens.
    /// @param amount The amount of FOX tokens to be unstaked.
    function unstake(uint256 amount) external;

    /// @notice Returns the amount of FOX tokens staked by an address.
    /// @param address The address we're querying the balance for
    /// @return The amount of FOX tokens staked by the address.
    function balanceOf(address address) external view returns (uint256);

    /// @notice Allows a user to claim their accumulated rewards.
    function claimRewards() external;

    /// @notice Allows a user to initially set (or update) their THORChain (RUNE) address for receiving staking rewards.
    /// @param runeAddress The new RUNE address to be associated with the user's staked FOX position.
    function setRuneAddress(address runeAddress) external;
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DailyCheckInRewards {
    mapping(address => uint256) public lastCheckIn;
    mapping(address => uint256) public balances;
    uint256 public rewardAmount = 10 ether; // Reward per daily check-in
    uint256 public interval = 1 days; // 24-hour cooldown period

    function checkIn() public {
        require(block.timestamp >= lastCheckIn[msg.sender] + interval, "Already checked in today");

        lastCheckIn[msg.sender] = block.timestamp;
        balances[msg.sender] += rewardAmount;
    }

    function getRewardBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}

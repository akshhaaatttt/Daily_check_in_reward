# 🚀 Daily Check-In Rewards Smart Contract

## 2️⃣ Daily Check-In Rewards 📅💎

### 📝 Description
The **Daily Check-In Rewards** smart contract incentivizes users by rewarding them with tokens for logging in daily. This mechanism helps maintain user engagement and retention.

### 🔹 How it Works
- Users interact with the contract once per day.
- The contract records the timestamp of their last check-in.
- If **24 hours** have passed since their last claim, tokens are automatically rewarded.

### 🎯 Use Cases
✅ **Web3 Social Platforms:** Encourage users to check in daily and stay active.  
✅ **Blockchain Games:** Reward players for maintaining login streaks.  
✅ **Loyalty Programs:** Incentivize continued engagement with rewards.  

### 🔗 Smart Contract Details
- **Contract Address:** [`0x43f2429EfeCC087BF66c91713269194F3bbD7209`](https://etherscan.io/address/0x43f2429EfeCC087BF66c91713269194F3bbD7209)
- **Network:** (Specify the blockchain network, e.g., Ethereum, Polygon, BSC)
- **Token Reward:** 10 tokens per successful daily check-in

### 📜 Smart Contract Code
```solidity
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
```

### 📌 How to Use
1. **Interact with the Contract**
   - Call the `checkIn()` function once every **24 hours** to receive rewards.

2. **Check Your Rewards**
   - Call `getRewardBalance(address user)` to see your accumulated rewards.

### 💡 Future Improvements
- **Token Withdrawal Mechanism:** Enable users to claim their rewards as real tokens.
- **NFT-Based Streak Rewards:** Special NFT rewards for maintaining long streaks.
- **Leaderboard System:** Display top users with the highest check-ins.

### 🤝 Contributing
Feel free to fork the repo and submit a pull request if you want to improve this project! 🚀

### 📬 Contact
For any inquiries or suggestions, open an issue or reach out via [your contact details].


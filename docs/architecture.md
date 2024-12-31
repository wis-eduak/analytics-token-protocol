# Architecture Overview

## System Components

### Token System

- Native fungible token (ANALYTICS-TOKEN)
- Used for governance and rewards
- Minted based on staking activity

### Data Structures

#### UserPositions

Tracks user-specific data including:

- Total collateral
- Staking amounts
- Voting power
- Tier level
- Rewards multiplier

#### StakingPositions

Manages staking-specific information:

- Staked amount
- Lock period
- Cooldown status
- Reward accumulation

#### Proposals

Stores governance proposals:

- Proposal details
- Voting periods
- Vote tallies
- Execution status

### Tier System

#### Tier 1 (Basic)

- Minimum Stake: 1M uSTX
- Reward Multiplier: 1x
- Basic feature access

#### Tier 2 (Advanced)

- Minimum Stake: 5M uSTX
- Reward Multiplier: 1.5x
- Additional feature access

#### Tier 3 (Premium)

- Minimum Stake: 10M uSTX
- Reward Multiplier: 2x
- Full feature access

## Technical Specifications

### Block Times

- Cooldown Period: 1440 blocks (~24 hours)
- Minimum Voting Period: 100 blocks
- Maximum Voting Period: 2880 blocks (~48 hours)

### Reward Calculation

```clarity
reward = (stake * base_rate * multiplier * blocks) / 14400000
```

### Lock Period Multipliers

- No Lock: 1x
- 1 Month (4320 blocks): 1.25x
- 2 Months (8640 blocks): 1.5x

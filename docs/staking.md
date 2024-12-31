# Staking Mechanism

## Overview

The staking system allows users to lock STX tokens in exchange for rewards and governance rights.

## Staking Process

### Entry Points

1. Initial stake (minimum 1M uSTX)
2. Optional lock period selection
3. Tier assignment based on amount
4. Reward multiplier calculation

### Lock Periods

- No Lock: Base rewards
- 1 Month (4320 blocks): 1.25x multiplier
- 2 Months (8640 blocks): 1.5x multiplier

## Reward System

### Base Rates

- Base APR: 5%
- Bonus Rate: 1% for extended staking
- Tier multipliers: 1x-2x

### Calculation Formula

```
Final Reward = Base Rate * Tier Multiplier * Lock Multiplier * Time
```

## Unstaking Process

### Cooldown System

1. Initiate unstaking
2. 24-hour cooldown period
3. Complete unstaking after cooldown
4. Token return to user wallet

### Safety Measures

- Minimum stake enforcement
- Cooldown period validation
- Balance checks
- Emergency pause capability

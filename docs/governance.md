# Governance Documentation

## Overview

The governance system enables stakeholders to participate in protocol decision-making through a proposal and voting mechanism.

## Proposal Creation

### Requirements

- Minimum voting power: 1M tokens
- Description length: 10-256 characters
- Valid voting period: 100-2880 blocks

### Process

1. User creates proposal with description and voting period
2. System assigns unique proposal ID
3. Voting period starts immediately
4. Proposal status tracked in Proposals map

## Voting

### Mechanism

- Binary voting system (For/Against)
- Voting power proportional to stake
- Votes locked until proposal ends
- One vote per user per proposal

### Vote Weight

- Based on user's tier level
- Affected by staking duration
- Proportional to total stake

## Implementation Details

### Proposal Structure

```clarity
{
    creator: principal,
    description: string-utf8,
    start-block: uint,
    end-block: uint,
    executed: bool,
    votes-for: uint,
    votes-against: uint,
    minimum-votes: uint
}
```

### Key Functions

- `create-proposal`: Creates new governance proposal
- `vote-on-proposal`: Casts vote on active proposal
- `get-proposal-count`: Returns total proposal count

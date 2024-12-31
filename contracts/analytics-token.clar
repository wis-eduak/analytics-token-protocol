;; Title: Analytics Token Protocol
;; Summary: A governance and staking protocol that allows users to stake STX tokens,
;; participate in governance, and earn rewards based on their stake and lock period.
;; Description: This contract implements a tiered staking system with governance capabilities.
;; Users can stake STX tokens with optional lock periods for enhanced rewards, create and
;; vote on proposals, and participate in protocol governance based on their tier level.

;; Constants and Token Definition
(define-fungible-token ANALYTICS-TOKEN u0)

(define-constant CONTRACT-OWNER tx-sender)

;; Error Codes
(define-constant ERR-NOT-AUTHORIZED (err u1000))
(define-constant ERR-INVALID-PROTOCOL (err u1001))
(define-constant ERR-INVALID-AMOUNT (err u1002))
(define-constant ERR-INSUFFICIENT-STX (err u1003))
(define-constant ERR-COOLDOWN-ACTIVE (err u1004))
(define-constant ERR-NO-STAKE (err u1005))
(define-constant ERR-BELOW-MINIMUM (err u1006))
(define-constant ERR-PAUSED (err u1007))


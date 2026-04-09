---
title: Homework Notes - Research Round 02
type: Research Notes
project: The Satoshi Protocol (Cybersting)
phase: 02-homework
created: 2025-11-26
status: active
description: Research notes, observations, and ideas collected during homework phase 2
---

# Research Homework Notes - Round 02

## Chess Reference - Cold War Pastiche

Add chess as a recurring motif/reference:

- **Genre cliche worth embracing**: Cold war thriller chess tournaments (Fischer vs Spassky energy)
- **Analyst character type**: Someone who thinks in chess terms, sees geopolitics as board positions
- **Visual shorthand**: Characters playing chess during exposition scenes
- **Thematic resonance**: Predetermined moves, sacrifices, the idea that masters see many moves ahead
- **Subversion potential**: The emergence doesn't play chess - it plays a game without rules, or changes the rules mid-game

---

## Parkour Mind - Pattern Recognition Refinement

Expand on the parkour-as-crisis-mitigation concept:

**Movement as Pattern Language**:
- When in the zone, movement complexity becomes visible as patterns
- Seeing rhythms instinctively - the flow state where conscious thought drops away
- The city becomes readable: "I can see the path before I take it"
- Patterns in architecture, in spacing, in the rhythm of obstacles
- This transfers to other pattern recognition: code, behavior, conspiracy

**The Zone**:
- Not thinking about each move, but *seeing* the sequence as a whole
- The gap between intention and action collapses
- Time dilation effect - everything slows down because you're processing faster
- Trained instinct vs conscious decision

**Connection to Story Themes**:
- Pattern recognition is what makes Elias dangerous to the conspiracy
- He sees patterns others miss (in block timing, in transaction flows)
- The same mental architecture that lets him flow through physical space lets him flow through data

---

## Saboteur Attack - Key Theft Mechanics

**Clarification**: The saboteur's attack is about the **storing and theft of the wallet keys (passphrases)**.

Key details:
- There are **20,000 Satoshi wallets** (not one)
- The sabotage involves somehow obtaining/copying/compromising the passphrases
- This is about access to secrets, not protocol modification

**Technical Accuracy Issue**:
> "Just a subtle modification to the authentication protocol, buried in a firmware update"

This doesn't fit Bitcoin's open protocol:
- Bitcoin's protocol is public, verified by thousands of nodes
- You can't "modify authentication" at the protocol level
- Any node running different rules would be rejected by the network

**What WOULD work for sabotage**:
- Compromising the **hardware** that stores keys (HSMs, air-gapped machines)
- Compromising the **software** that signs transactions (wallet software, not protocol)
- Social engineering to obtain seed phrases
- Supply chain attack on hardware before installation
- Keylogger/screen capture during key generation
- Compromising the key ceremony itself

**Revised saboteur approach**:
Marcus Webb's sabotage should be about:
- Corrupting/copying the keys during initial storage
- Firmware on the *signing hardware* (HSM), not the Bitcoin protocol
- Or: ensuring the keys stored are slightly wrong (one character off)
- Or: adding an exfiltration vector that copied keys during generation

---

## The Emergence Trick - Shattering via Divisibility

**Core concept**: The emergence uses Bitcoin's divisibility to create a "shattering" effect.

Bitcoin facts:
- 1 BTC = 100,000,000 satoshis (smallest unit)
- Coins can be split infinitely within this resolution
- Transactions can have unlimited outputs (practically limited by fees/block size)

**The Shattering**:
- Satoshi's ~1 million BTC begins moving
- Instead of consolidating or transferring whole, it **divides**
- Each transaction splits coins into twice as many wallets
- Doubling cascade: 1 → 2 → 4 → 8 → 16 → 32 → 64 → 128...
- After 20 doublings: over 1 million separate wallets
- After 30 doublings: over 1 billion wallets

**The Rhythm**:
- The shattering occurs to a pattern/rhythm
- Delayed intervals that extend the panic
- Each division is a news event
- The regularity implies *intention* (whether or not there is any)
- Mass hysteria fed by predictable unpredictability: "It's happening again!"

**Circus Trick Energy**:
- Like a magician's multiplying coins
- The wealth doesn't disappear - it disperses
- Practically impossible to reverse or consolidate
- Each new wallet would need its own key - who has them?

**Thematic Value**:
- Ultimate decentralization: the coins become too scattered to control
- The emergence "gives away" the treasure by fragmenting it
- No one faction can collect all the pieces
- The shattering IS the message

---

## IP Address Pattern - Digital Crop Circle

**Concept**: The IP addresses used for broadcasting transactions, when mapped geographically or numerically, form a pattern.

Possibilities:
- Geographic mapping shows a shape (spiral, symbol, face)
- ASCII representation of IP octets spells something
- Pattern only visible when viewed at the right scale/resolution
- "Hello World :)" - classic programmer first-message

**User note**: "Might be jumping the shark"

**Considerations**:
- Pro: Creates a tangible mystery, a visible "message" to decode
- Pro: Feeds the mass psychosis narrative - people LOOKING for meaning will find it
- Pro: "Hello World" is perfectly thematic - it's what new programs say
- Con: Could feel too cute/clever
- Con: Implies more intentionality than "plant developing toxicity"

**Middle ground**:
- The pattern exists but is ambiguous - could be intentional OR pareidolia
- Characters debate whether it's real or imposed by pattern-seeking humans
- The reader never gets confirmation either way
- Fits the theme: we see intention everywhere, even where it doesn't exist

**Technical implementation**:
- Transactions are broadcast from nodes, not the sender's IP directly
- So the "pattern" would need to be in which nodes first relay each transaction
- This is extremely sophisticated - controlling network propagation
- Could support "emergence is more than human" interpretation
- Or could be dismissed as coincidence by skeptics in-story

---

## Protocol vs Implementation Clarification

For technical accuracy, distinguish:

**Bitcoin Protocol** (immutable, verified by network):
- Transaction format
- Signature verification rules
- Block structure
- Consensus rules

**Cannot be sabotaged by one actor** - any deviation rejected by honest nodes.

**Implementation/Infrastructure** (vulnerable):
- Specific wallet software
- Hardware security modules (HSMs)
- Key storage systems
- Signing ceremonies
- Network infrastructure

**CAN be sabotaged** - this is where human attack surface exists.

**Story implication**:
- The saboteur attacks the *implementation*, not the protocol
- The emergence might operate at a level that transcends both
- The distinction matters for technical readers

---

## Skills to Apply in Round 03

1. atmosphere-description - Chess tournament cold war pastiche
2. character-voice-experiment - Parkour pattern recognition in the zone
3. conceptual-diagram - Shattering cascade visualization
4. dialogue-fragment - Explaining the 20,000 keys problem
5. motif-draft - Chess as metaphor (and its limits)
6. puzzle-mystery-mechanic - IP address pattern/message
7. scene-sketch - Saboteur key theft operation
8. spectacle-page - Shattering panic media coverage
9. speculative-insert - What sabotage actually looks like (technical accuracy)
10. vignette - Chess-minded analyst character

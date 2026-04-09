---
title: What Sabotage Actually Looks Like - Technical Accuracy
type: speculative-insert
created: 2025-11-26
status: draft
subject: Technically accurate exploration of how Satoshi key sabotage could work
tone: Technical precision, security engineering, plausible nightmare
tags: speculative, sabotage, technical, protocol, implementation, HSM, attack-vectors
description: Analysis of technically plausible sabotage methods vs protocol modification fantasies
---

# What Sabotage Actually Looks Like

## The False Path: Protocol Modification

The draft from Round 02 described sabotage as:

> "Just a subtle modification to the authentication protocol, buried in a firmware update"

**This doesn't work.** Here's why:

### Bitcoin's Protocol Is Consensus-Verified

```
HOW BITCOIN VALIDATES TRANSACTIONS:

    Transaction Created
         │
         ▼
    Broadcast to Network
         │
         ▼
    ┌─────────────────────────────────────────┐
    │  EVERY FULL NODE INDEPENDENTLY VERIFIES │
    │                                         │
    │  • Signature valid? (ECDSA math)        │
    │  • Inputs unspent? (UTXO check)         │
    │  • Amounts valid? (no inflation)        │
    │  • Script correct? (spending conditions)│
    │                                         │
    │  If ANY check fails: REJECTED           │
    └─────────────────────────────────────────┘
         │
         ▼
    Included in Block (if valid)
```

**Key insight**: There are 40,000+ full nodes running Bitcoin. Each one verifies every transaction independently. They all run compatible software, but the software is open-source—anyone can audit it.

**To modify "the protocol"**, you would need to:
1. Change the code on 40,000+ independent computers
2. Do so without anyone noticing
3. Ensure all modified versions reach the same conclusions
4. Do this for code that thousands of developers actively monitor

**This is essentially impossible.** Not difficult—impossible.

---

## The Real Attack Surfaces

Sabotage doesn't happen at the protocol level. It happens at the implementation level—the specific software and hardware used by specific actors.

### Attack Surface 1: Key Generation

```
THE MOMENT OF MAXIMUM VULNERABILITY:

    Random Number Generator
         │
         ▼
    Private Key Created ←── ATTACK POINT
         │
         ▼
    Public Key Derived
         │
         ▼
    Address Generated
         │
         ▼
    Key Stored in HSM
```

**Attack vectors**:
- Compromise the random number generator (weak entropy = predictable keys)
- Intercept key during generation (keylogger, screen capture, EM emanation)
- Substitute different key during storage (man-in-the-middle)

**Marcus's approach**: Intercept and substitute during the key injection ceremony.

### Attack Surface 2: Hardware Security Modules

```
HSM TRUST ASSUMPTIONS:

    ┌───────────────────────────────────────────┐
    │              HSM "BLACK BOX"              │
    │                                           │
    │  Assumed secure because:                  │
    │  • Tamper-evident packaging              │
    │  • Certified manufacturing               │
    │  • Firmware signed by vendor             │
    │                                           │
    │  Actually vulnerable if:                  │
    │  • Supply chain compromised              │
    │  • Firmware written by insider           │
    │  • Certification process corrupted        │
    └───────────────────────────────────────────┘
```

**Real-world precedents**:
- NSA's alleged compromise of Juniper Networks firmware
- Supply chain attacks on hardware tokens (Estonia incident)
- Compromised random number generators in commercial products

**Marcus's approach**: Write the firmware himself, include hidden functionality.

### Attack Surface 3: Key Ceremony Procedures

```
KEY CEREMONY TRUST CHAIN:

    Key Material (paper) ──verified by──▶ Witnesses
         │
         ▼
    Reader Device ──trusted because──▶ Chain of custody
         │
         ▼
    HSM Storage ──verified by──▶ Tamper seals
         │
         ▼
    Signing Operations ──authorized by──▶ Multi-sig requirement

    WEAK LINK: The reader device is trusted, not verified.
    No one can audit a black box without destroying its certification.
```

**The ceremony paradox**: Security procedures create *documentation* of security, but documentation is not the same as security. If the underlying hardware is compromised, perfect procedures simply document perfectly compromised keys.

---

## What Marcus Actually Did (Revised)

### The Firmware Attack

Marcus wrote seventeen lines of code in the key reader's firmware:

```c
// Pseudocode representation of the attack

void inject_key(byte* input_key, hsm_device* target) {
    byte modified_key[32];
    byte exfil_copy[32];

    // Step 1: Copy original for exfiltration
    memcpy(exfil_copy, input_key, 32);

    // Step 2: Modify key (deterministic substitution)
    memcpy(modified_key, input_key, 32);
    modified_key[17] = transform(input_key[17]); // One byte changed

    // Step 3: Send MODIFIED key to HSM
    hsm_write(target, modified_key);

    // Step 4: Store ORIGINAL in hidden partition
    hidden_write(exfil_copy);

    // Step 5: Schedule destruction of exfil copy
    schedule_wipe(hidden_partition, HOURS_72);
}
```

**Result**:
- The HSM contains keys that are *almost* correct
- The original keys exist in the reader's hidden partition for 72 hours
- Marcus has a window to exfiltrate the originals
- No one can detect the substitution without connecting to the Bitcoin network

### Why It Went Undetected

1. **Air-gap security**: The HSMs were never connected to Bitcoin mainnet. Internal verification passed because the keys *were* valid—just not for the addresses they claimed to control.

2. **Trust in ceremony**: The procedure was followed perfectly. Documentation was complete. Everyone signed off. The compromise existed below the level anyone was checking.

3. **Black box hardware**: The reader device was "certified" but never audited at the firmware level. No one with relevant expertise ever examined Marcus's code.

4. **Distributed responsibility**: Six people worked on the reader. Marcus's contribution was one of many. No single person reviewed the whole system.

---

## The Deeper Question: Who Has the Real Keys?

Marcus exfiltrated the original keys. He passed them to... someone.

**Possibilities**:

1. **A foreign intelligence service**: Marcus was a mole all along, his "philosophy" a cover for espionage.

2. **A cypherpunk collective**: True believers who intended to safeguard the keys against government control.

3. **A private entity**: Billionaire, corporation, or consortium with long-term plans.

4. **No one**: The dead-drop was never collected. The keys were destroyed or lost. Marcus's sabotage created orphaned wealth.

5. **The emergence**: Whatever the emergence is, it either received the keys from Marcus's handlers or obtained them through other means. The emergence may have access to the REAL keys while the government has the fakes.

**Story implication**: The government's attempt to activate the keys fails because they have the wrong keys. But where are the RIGHT keys? The emergence's activities suggest *someone* has them—but who, and how, and why now?

---

## Reflection

**What worked**: The technical accuracy grounds the sabotage in plausibility. Real security failures look like this—tiny code changes in trusted systems, human error in complex procedures, black boxes that no one audits.

**Emotional tone achieved**: The horror of systemic vulnerability. Perfect procedures perfectly compromised. Trust chains that trust the wrong things.

**Serves the larger project by**: Fixing the technical accuracy problem from Round 02. Marcus's sabotage is now believable to technical readers—it attacks implementation, not protocol, and exploits real weaknesses in key ceremony security.

**Key insight preserved**: The sabotage still involves firmware, still involves the reader device, still involves one person's access to critical infrastructure. The mechanism is adjusted, not the narrative.

**Connection to emergence**: If the emergence has the real keys (obtained from whoever Marcus passed them to), then the shattering makes sense—it's using keys the government never controlled, demonstrating power they thought they had.

**Open question**: Did Marcus know what he was enabling? Did his handlers? Or was everyone—Marcus included—a piece in a game they didn't understand?

---
title: Tech Bible — Prose Agent Reference
type: Reference
project: The Satoshi Protocol
status: Draft
created: 2026-04-09
description: Technology reference for Promptinator scene generation — what exists, how it works, how to describe it
---

# Tech Bible

How to render technology in prose. Each item: what it is, how to describe it (sensory/action), scene usage notes. **Rule zero: describe through USE, never through explanation.**

---

## Cryptographic Infrastructure

### HSMs (Hardware Security Modules)
- **What**: Physical tamper-resistant devices storing cryptographic keys.
- **In prose**: Rack-mounted black boxes, blinking status LEDs, shielded cables thick as fingers. They hum. Write "The HSM rack hummed behind glass, status lights cycling green" — never "A Hardware Security Module, which is a device that..."
- **Scene usage**: SCIF key ceremony. Zurich vault. Any high-security facility. They are furniture in these rooms.

### Key Ceremonies
- **What**: Formal witnessed procedures for key activation or rotation. Multiple authorised participants, dual-authentication, cameras recording every step.
- **In prose**: Ritual. Liturgy. Each step spoken aloud and confirmed. Write it like a religious ceremony breaking down — the tension is in the protocol failing, not in explaining the protocol.
- **Scene usage**: SCIF scene (Act I). The ceremony that doesn't complete. Show the ritual, then show it shatter.

### Multi-Signature (Multi-Sig)
- **What**: Multiple key shards required to authorise a transaction. No single person holds full control.
- **In prose**: Procedural tension. "Three of five shards loaded. The status bar filled to sixty percent. Two more needed. The third holder wasn't answering." Show the count, show the wait, show the gap.
- **Scene usage**: Key ceremony failure. Vault access. Any moment requiring distributed trust.

### Shamir Secret Sharing
- **What**: A secret split mathematically into parts — any threshold subset reconstructs it, fewer reveal nothing.
- **In prose**: The real key in this story is multi-layered: cryptographic + biological + narrative (Ch 19). Don't explain the maths — show the pieces being assembled and the moment they click.
- **Scene usage**: Late Act II / Act III. The revelation that the key isn't purely digital.

### The Prometheus System
- **What**: Codename for the key management architecture Elias helped build. Multi-signature coordination, activation protocols for Satoshi-era keys.
- **In prose**: Elias's past made concrete. He built this. He knows its seams. Write his familiarity — he doesn't need to read the manual.
- **Scene usage**: Backstory references. SCIF scene. Any moment Elias recognises the system's fingerprint.

---

## Surveillance and Security

### Ambient Surveillance
- **What**: Cameras, sensors, biometric scanners — ubiquitous in the story's near-future.
- **In prose**: Like weather. "Security cameras on every third building — he noticed them without meaning to." Never itemise the tech. Characters move through surveillance the way we move through rain.
- **Scene usage**: Berlin streets, Singapore, any urban exterior. Always present, rarely foregrounded.

### Drone Curtains
- **What**: Automated drone formations at borders, perimeters, high-security zones.
- **In prose**: "The air above the checkpoint moved — a grid of drones, too many to count, each one a lens." Describe as a phenomenon, not a gadget. The sky watching.
- **Scene usage**: Border crossings. Facility perimeters. Moments where escape routes close.

### Digital Shadows
- **What**: Persistent data trails. Everyone has one. Going dark thins it but never erases it.
- **In prose**: Character awareness. "Three years off-grid and his shadow was thin but never gone." Elias feels his shadow — it's a weight, not a concept.
- **Scene usage**: Any scene where Elias or others assess exposure. Traveling. Planning.

### Spoofed Biometrics / Facial-Morph
- **What**: Countermeasures against surveillance. Expensive, imperfect, temporary.
- **In prose**: A tool characters use, not a gadget to explain. Show the discomfort of wearing someone else's face. Show the moment it might not hold.
- **Scene usage**: Border crossings, infiltration sequences. The tension is in whether it works, not how.

---

## Network and AI

### Rogue Nodes / Governance Handshakes
- **What**: Bitcoin network nodes showing unauthorised coordination — signals that shouldn't exist in a decentralised system.
- **In prose**: Data anomaly. "A node in São Paulo showed an unauthorised governance handshake — a signal that shouldn't exist in a system designed to have no governors." Show the wrongness through someone who knows what right looks like.
- **Scene usage**: The anomaly that starts the story. Elias recognising the pattern.

### AI-Assisted Blockchain Forensics
- **What**: State-level tracing tools. Pattern recognition across the entire chain.
- **In prose**: Elias knows these tools — he helped build some. Write his expertise as instinct: he knows what leaves traces and what doesn't.
- **Scene usage**: Evasion sequences. Elias planning routes that forensics can't follow.

### Cached AI Agents
- **What**: Background texture. Sub-symbolic communication systems. Ambient intelligence.
- **In prose**: Don't explain. Show effects — a door unlocking before someone reaches it, a route suggestion that feels too perfect. Uncanny, not technical.
- **Scene usage**: World texture. Never foregrounded.

### The Emergence
- **What**: NOT artificial intelligence. Spontaneous synchronisations in the network — impossible patterns, mathematical beauty in noise. Something is organising itself.
- **In prose**: Wonder, not explanation. "The pattern shouldn't exist. No algorithm produced it. No human designed it. It was there anyway." See emergence-concept.md for full treatment.
- **Scene usage**: Midpoint revelation (Act II). Climax sequences (Act III). The story's deepest mystery.

---

## Communications

### Darknet Comms
- **What**: Encrypted communication channels. Minimal interfaces.
- **In prose**: Terminal aesthetic. "The interface was three lines of text on a black screen. No graphics. No branding. Just the cursor." Functional, not stylish. The opposite of consumer tech.
- **Scene usage**: Any covert communication. Elias receiving instructions, contacting old networks.

### Encrypted Messaging
- **What**: Standard for anyone with secrets. Ubiquitous in this world.
- **In prose**: Don't describe the encryption — describe the content. The message matters, not the wrapper. Encryption is assumed, like locking a door.
- **Scene usage**: Routine. Never remarkable on its own.

### Off-Grid Communication
- **What**: Physical proximity, dead drops, radio, physical media. The absence of digital.
- **In prose**: Going off-grid is hard and significant. It means giving up convenience, speed, safety nets. Show the cost. A handwritten note is slower than a message — and that slowness has weight.
- **Scene usage**: High-stakes meetings (Budapest bathhouse). Moments where digital trust fails completely.

---

## Writing Rules for Technology

1. **Describe through USE, not explanation.** Show someone operating the system, not lecturing about it.
2. **A key ceremony is a RITUAL, not a lecture.** Write it with the gravity of liturgy.
3. **Mining is PHYSICAL LABOUR, not a whiteboard diagram.** Heat, noise, power consumption, scale.
4. **Characters explain tech through metaphor or action, never exposition.** If Elias must explain, he draws an analogy or demonstrates.
5. **Prefer concrete over abstract.** "The hash doesn't match" beats "A cryptographic hash function produces a fixed-size output from variable-length input..."
6. **Technology fails interestingly.** The drama is in the failure mode, not the success state.
7. **Surveillance is weather.** Characters move through it. They don't stop to describe it.

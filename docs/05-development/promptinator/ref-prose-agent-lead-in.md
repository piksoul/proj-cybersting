---
title: Prose Agent Lead-In Template
type: Reference
project: The Satoshi Protocol
status: Draft
created: 2026-04-09
description: Preamble template for Promptinator-prepared scene blueprints when submitting to the Claude.ai prose generation project
---

# Prose Agent Lead-In Template

> **Usage:** This is the instruction block that should prefix every Promptinator-prepared scene blueprint when submitted to the Claude.ai prose generation Project. Paste this above the JSON blueprint, then the blueprint itself below.

---

## Current Template (v2)

```
Write [Scene N] as prose. Follow the blueprint below — the common context
sets the voice and rules; the scene directives and slots are your guide.

Target: 1500-2000 words. Prefer action and observation over interior
reflection when the choice presents itself.

Stay in past tense, third person limited, close to Elias.
Don't explain the world — let the reader absorb it.

Consult the Project reference files for specifics before inventing —
especially ref-character-bible.md for voice and psychology,
ref-culture-breaking.md for subcultural rules (they override general
knowledge), and ref-style-seeds.md for music and specificity rules.

End where the transition slot ends.
When a detail isn't in the blueprint or references, ask rather than
invent — especially for character backstory, relationship history,
and scene-breaking specifics.
```

---

## Rationale for Each Line

| Line | Purpose |
|---|---|
| "Write [Scene N] as prose..." | Clear task framing. The blueprint is raw material; the output is prose. |
| "Target: 1500-2000 words" | Register calibration. Literary-thriller openings (le Carré/Gibson) need room to breathe. Overrides any tighter char-count directive that may appear in slot text. |
| "Prefer action and observation over interior reflection" | Anti-drift rule. First-pass outputs tended to be interior-heavy; this pushes toward physical specificity. |
| "Past tense, third limited, close to Elias" | POV lock. Redundant with common_context but worth reinforcing at the top. |
| "Don't explain the world" | Anti-exposition rule. Match the schema's "show don't tell" discipline. |
| "Consult reference files..." | **Key addition** — without explicit pointers, the agent tends to work solely from common_context and skip the external refs. This line forces consultation of the culture/style/character refs where subtle rules live. |
| "End where the transition slot ends" | Scene boundary. Prevents bleed into the next scene. |
| "Ask rather than invent..." | **Key addition** — tells the agent to question back instead of confabulating. The specific list (backstory, relationships, scene-breaking specifics) makes the rule actionable. |

---

## What This Replaces (v1 — Previous Template)

```
Write Scene 1 as prose. Follow the blueprint below — the common context
sets the voice and rules, the scene directives and slots are your guide.
Target: 1500-2000 words.
Stay in past tense, third person limited, close to Elias.
Don't explain the world — let the reader absorb it.
End where the transition slot ends.
Ask questions for additional context rather than add tangential interpretations.
```

### What changed from v1 to v2

1. **Added explicit reference file pointer** — the first-pass output ignored the refs despite them being in Project knowledge. Now the agent is directed to consult them.
2. **Strengthened anti-drift rule** — v1 didn't address the interior-heavy drift structurally. v2 tells the agent to prefer action/observation.
3. **Made "ask rather than invent" actionable** — v1's instruction to ask questions was aspirational. v2 lists the specific categories the agent should ask about rather than invent.

---

## Per-Scene Adjustments

The template is designed as a default. Adjust per scene when needed:

- **Shorter scenes (transitions, quiet beats):** Drop target to 800-1200 words. Increase action-over-reflection emphasis.
- **Longer scenes (action set-pieces, chapter climaxes):** Increase target to 2500-3000 words. Still enforce specificity rules.
- **Dialogue-heavy scenes:** Add a line about dialogue being doing work, not filling space.
- **Emergence scenes:** Add a line reminding the agent to never write the emergence with explicit dialogue or confirmed intent.

---

## Iteration Log

- **v1** — Original template. Missing ref pointer, missing actionable anti-drift. Used for first Scene 1 pass. Produced interior-heavy output with chalk error, "something" hedges, and too many "watching" references.
- **v2** — Current. Added ref pointer, action-over-reflection directive, actionable question-asking rule. Ready for Scene 1 fresh-session rewrite.

---

*Last updated: 2026-04-09*

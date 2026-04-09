# Promptinator — Project Import Schema

Instructions for generating Promptinator-compatible project import JSON from planning documents.

## What This Is

Promptinator is a modular prompt composition tool that organises work into **Projects** (collections) containing **Prompts** (individual compositions). Each prompt has **slots** that hold text fragments which compose together into a final output.

This document defines the JSON format for bulk-importing a project structure into Promptinator.

---

## JSON Format

```json
{
  "title": "Project Title",
  "schema_type": "narrative",
  "description": "Short project description",
  "common_context": "Shared context that applies to all prompts...",
  "prompts": [
    {
      "title": "Prompt Title",
      "generator": "scene_full",
      "status": "not_started",
      "slots": {
        "slot_key": "Text content for this slot...",
        "another_slot": "More content..."
      }
    }
  ]
}
```

### Top-Level Fields

| Field | Required | Description |
|-------|----------|-------------|
| `title` | Yes | Project name |
| `schema_type` | Yes | One of: `narrative`, `music`, `image` |
| `description` | No | Short description of the project |
| `common_context` | No | Shared context for all prompts — characters, world rules, tone, style. This text is available across every prompt in the project. |
| `prompts` | Yes | Array of prompt objects |

### Prompt Fields

| Field | Required | Description |
|-------|----------|-------------|
| `title` | Yes | Prompt name (e.g. scene title, track name, panel description) |
| `generator` | No | Generator target — determines char/token limits. Defaults to first available for the schema. |
| `status` | No | Pipeline status. Default: `not_started`. Options: `not_started`, `drafting`, `composed`, `generated`, `approved`, `parked` |
| `slots` | No | Object mapping slot keys to inline text. Omitted slots are created empty. |

---

## Schema Definitions

### Narrative Schema (`narrative`)

For prose, screenwriting, scene composition.

**Slots:**

| Key | Label | Purpose |
|-----|-------|---------|
| `scene_context` | Scene Context | Where we are in the story, what just happened, what this scene needs to accomplish |
| `setting` | Setting | Physical environment, sensory details, atmosphere |
| `character_action` | Character Action | What the POV character does — physical movement, decisions, reactions |
| `dialogue` | Dialogue | Conversation beats, spoken lines, verbal exchanges |
| `internal` | Internal / Subtext | Thought, emotion, unspoken tension, what characters are thinking but not saying |
| `tension` | Tension / Stakes | Conflict, what's at risk, urgency, the dramatic engine of the scene |
| `sensory` | Sensory Detail | Specific sensory moments — sounds, textures, smells, temperature |
| `transition` | Transition | How the scene ends or bridges to the next — time skips, location shifts, cliffhangers |

**Generators:**

| Key | Limit | Use for |
|-----|-------|---------|
| `scene_short` | ~500 chars | Brief scene sketches, transitions |
| `scene_medium` | ~2000 chars | Standard scene drafts |
| `scene_full` | ~5000 chars | Full scene compositions |
| `chapter_draft` | ~15000 chars | Complete chapter drafts |

### Music Schema (`music`)

For AI music generation prompts (SUNO, etc.).

**Slots:**

| Key | Label | Purpose |
|-----|-------|---------|
| `base` | Base | Overall genre, mood, tempo, vibe |
| `structure` | Structure | Song structure, arrangement, section flow |
| `drums` | Drums | Rhythm, percussion, beat style |
| `bass` | Bass | Bass sound, style, frequency character |
| `music` | Music / Synth | Melodic instruments, synths, pads, leads |
| `vocals` | Vocals | Vocal style, treatment, character |
| `fx_post` | FX / Post | Effects, post-production, texture, mastering character |

**Generators:**

| Key | Limit | Use for |
|-----|-------|---------|
| `suno_style` | 200 chars | SUNO simple style prompt |
| `suno_custom_style` | 1000 chars | SUNO custom style prompt |
| `suno_lyrics` | 3000 chars | SUNO lyrics prompt |

### Image Schema (`image`)

For AI image generation prompts (Midjourney, DALL-E, Flux, etc.).

**Slots:**

| Key | Label | Purpose |
|-----|-------|---------|
| `subject` | Base Subject | Primary subject matter |
| `foreground` | Foreground | Front layer elements |
| `midground` | Midground | Middle layer, supporting elements |
| `background` | Background | Back layer, environment |
| `style` | Style | Art style, medium, aesthetic |
| `detail` | Detail Notes | Specific detail instructions, focus areas |
| `lighting` | Lighting & Atmosphere | Light sources, mood, atmospheric quality |
| `output` | Output / Rendering | Resolution, quality, rendering specifications |

**Generators:**

| Key | Limit | Use for |
|-----|-------|---------|
| `midjourney` | 6000 chars | Midjourney |
| `dalle3` | 4000 chars | DALL-E 3 |
| `sdxl` | 77 tokens | Stable Diffusion XL |
| `flux_dev` | 512 tokens | FLUX.1-dev |
| `flux_pro` | 32000 tokens | FLUX 2 Pro |
| `nano_banana` | 2000 chars | Nano Banana |

---

## Generation Guidelines

When generating import JSON from planning documents:

### General Rules
- **One prompt per scene/track/panel** — each discrete creative unit gets its own prompt
- **Title should be descriptive and ordered** — "Ch1 Scene 3 — The Corridor" not just "Scene 3"
- **Only fill slots where the source material has content** — leave slots empty rather than inventing filler
- **Keep slot text concise** — these are composition fragments, not full prose. Bullet points and short phrases work well.
- **Set generator based on expected output length** — `scene_short` for transitions, `scene_full` for key scenes

### For Narrative Projects

**`scene_context` is the director's slate.** It carries everything the scene needs to know beyond the content slots. Structure it as a brief block of directives followed by the scene description:

```
POV: Elias, tight third.
Cast: Secretary of the Treasury, NSA Crypto Lead, Elias.
Pacing: slow burn, institutional dread building.
Integrate: proof-of-work as physical labour metaphor.

Night shift at the DataVault. Elias monitoring routine traffic when anomalous packets appear.
```

The directive lines are:
- **POV** — whose head we're in, narrative distance (tight third, omniscient, etc.)
- **Cast** — who appears in the scene. The generator needs to know who's in the room.
- **Pacing** — rhythm and intensity ("rapid, kinetic", "slow burn", "quiet aftermath")
- **Integrate** — concept or thematic threads to weave in. Brief cue, not an essay. ("decentralisation as power shift", "Kafka-esque institutional absurdity")

These are optional — only include what the source material specifies. A simple scene might just have the description with no directive lines.

**Other narrative slots:**
- **tension** should identify the specific dramatic question or conflict driving the scene
- **internal** captures what characters think/feel but don't say — subtext is gold here
- **setting** and **sensory** are distinct: setting is the environment, sensory is specific moments of physical experience
- **transition** is optional — only include if the source material specifies how the scene ends or bridges

### For Common Context

Common context is the **project DNA** — the handful of rules that apply to every scene. Keep it tight and factual. This is a style bible, not an encyclopedia.

**What belongs in common_context (~15-20 lines max):**
- **Protagonist** (3-4 lines) — name, role, key traits, voice. Just enough to anchor every scene.
- **World** (3-4 lines) — setting, era, atmosphere rules. The physical and social reality.
- **Tone** (2-3 lines) — POV default, tense, prose style, comparable voice.
- **Core constraint** (1-2 lines) — the non-negotiable creative rule. e.g. "never stop plot to explain", "embed ideas in action not exposition".

**What does NOT belong in common_context:**
- Full character profiles for supporting cast — too heavy. Reference these from your planning docs when populating individual scene slots.
- The complete philosophical framework — dilutes the signal. Put a one-line thematic cue in `scene_context` per scene instead.
- Thematic threading maps (which themes appear in which chapters) — organisational metadata, not generative context.
- Pacing graphs and act structure — planning tools, not composition inputs.
- Educational integration plans — use brief `Integrate:` cues in `scene_context` per scene.

**The test:** if removing a line from common_context wouldn't noticeably change how a scene gets written, it doesn't belong there. Every line should pull its weight.

### For Music Projects
- **common_context** holds the sonic palette: instruments, BPM range, reference artists, production constraints
- Keep it to the shared identity — what makes all tracks sound like they belong on the same album
- Per-track variation goes in the prompt slots, not common_context

### For Image Projects
- **common_context** holds the visual style bible: art style, colour palette, consistent character/world rules
- Useful for series work (comics, campaigns) where visual consistency matters across panels
- Per-panel specifics (composition, action, framing) go in prompt slots

---

## Example: Narrative Project Import

```json
{
  "title": "Cybersting — Chapter 1",
  "schema_type": "narrative",
  "description": "Opening chapter: the key ceremony fails",
  "common_context": "Protagonist: Elias, early 30s, cryptographer turned reluctant activist. Precise, guarded, dry wit under pressure. Thinks in systems.\n\nWorld: Near-future. Nation-states racing to control digital currency infrastructure. Corporate server farms are physical fortresses. Surveillance is ambient.\n\nTone: Tight third person, present tense. Noir sensibility — observation over exposition. Short paragraphs, sensory detail.\n\nCore rule: Never stop plot to explain. Embed ideas in action, dialogue, and subtext.",
  "prompts": [
    {
      "title": "Ch1 Scene 1 — The Keys Don't Work",
      "generator": "scene_full",
      "status": "not_started",
      "slots": {
        "scene_context": "POV: Elias, tight third.\nCast: Secretary of the Treasury, NSA Crypto Lead, Elias, technicians.\nPacing: slow burn, institutional dread.\nIntegrate: cryptographic key ceremony as ritual of control.\n\nSubterranean SCIF beneath the Treasury. Scheduled key rotation ceremony fails. The HSMs reject every key.",
        "setting": "Subterranean SCIF, blue-white LED strips, humming HSM racks, cold recycled air, no windows, concrete walls",
        "tension": "The nation's digital reserves are locked behind keys that no longer work. Nobody in the room understands why.",
        "dialogue": "\"Who authorised the last rotation?\" Silence. \"Who do you think?\""
      }
    },
    {
      "title": "Ch1 Scene 2 — The Corridor",
      "generator": "scene_medium",
      "status": "not_started",
      "slots": {
        "scene_context": "POV: Elias.\nPacing: quiet, reflective.\n\nElias leaves the SCIF. Walking the corridor alone, processing what just happened.",
        "internal": "He recognised the failure pattern. He designed it. Three years ago, different context, different employer. The question is who found it.",
        "sensory": "His shoes on polished concrete. The hum of air handling. A security camera tracks him with a soft servo whir."
      }
    }
  ]
}
```

## Example: Music Album Import

```json
{
  "title": "Midnight Circuit EP",
  "schema_type": "music",
  "description": "4-track synthwave EP, dark and driving",
  "common_context": "Sonic palette: analog synths, gated reverb drums, neon atmosphere. BPM range 110-128. Reference: Perturbator, Carpenter Brut, Kavinsky. No vocals — instrumental only.",
  "prompts": [
    {
      "title": "Track 1 — Ignition",
      "generator": "suno_custom_style",
      "status": "not_started",
      "slots": {
        "base": "dark synthwave, driving tempo 120bpm, pulsing energy, neon-lit",
        "drums": "electronic drums, tight kick, gated snare, crisp hi-hats",
        "bass": "deep analog bass, pulsing eighth notes, filter sweep"
      }
    },
    {
      "title": "Track 2 — Neon Rain",
      "generator": "suno_custom_style",
      "status": "not_started",
      "slots": {
        "base": "atmospheric synthwave, slower 100bpm, melancholic, rain-soaked"
      }
    }
  ]
}
```

---

*Schema version: Promptinator v0.10.x*

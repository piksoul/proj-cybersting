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
- **scene_context** should summarise what the scene needs to accomplish and where it sits in the story
- **tension** should identify the specific dramatic question or conflict driving the scene
- **internal** captures what characters think/feel but don't say — subtext is gold here
- **setting** and **sensory** are distinct: setting is the environment, sensory is specific moments of physical experience
- **transition** is optional — only include if the source material specifies how the scene ends or bridges

### For Common Context
- Include character descriptions (appearance, voice, mannerisms)
- Include world rules and setting parameters
- Include tone/style guidelines (POV, tense, prose style)
- Keep it factual and reference-like — this is a style bible, not prose

---

## Example: Narrative Project Import

```json
{
  "title": "Cybersting — Chapter 1",
  "schema_type": "narrative",
  "description": "Opening chapter: Jess discovers the breach",
  "common_context": "Protagonist: Jess Nakamura, 28, data security analyst at Meridian DataVault. Lean build, dark bob cut, augmented left eye (silver iris). Speaks in clipped sentences, dry humour under pressure.\n\nWorld: London 2035. Corporate server farms are physical fortresses. Street level is analogue.\n\nTone: Tight third person, present tense. Noir sensibility — observation over exposition.",
  "prompts": [
    {
      "title": "Ch1 Scene 1 — The Breach",
      "generator": "scene_full",
      "status": "not_started",
      "slots": {
        "scene_context": "Night shift at Meridian DataVault. Jess monitoring routine traffic when anomalous packets appear.",
        "setting": "Server room floor 3, blue LED glow, humming racks, cold recycled air",
        "tension": "The packets match a pattern she saw once before — the night her mentor disappeared"
      }
    },
    {
      "title": "Ch1 Scene 2 — The Decision",
      "generator": "scene_full",
      "status": "not_started",
      "slots": {
        "scene_context": "Jess decides whether to report the anomaly or investigate alone",
        "internal": "She knows reporting means the data gets buried. She's seen it happen."
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

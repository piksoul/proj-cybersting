---
title: Documentation Organization - 01-idea Phase
type: Index
project: The Satoshi Protocol
phase: 01-idea
status: Active
created: 2025-11-21
updated: 2025-11-21
description: Organization and navigation guide for all ideation phase documentation.
---

# The Satoshi Protocol - Ideation Phase Documentation

This directory contains all source material, research, and planning documents for **The Satoshi Protocol** novel during the ideation phase.

## 📊 Document Organization by Type

### 🎯 **Core Planning & Strategy** (5 docs)
High-level concept, positioning, and strategic direction

- `agentic-brief.md` - Agent workflow brief with story concept and AI pipeline
- `one-pager.md` - Professional pitch document for agents/publishers
- `idea-recap.md` - Comprehensive status assessment with strengths/gaps
- `product-strategy.md` - Novel & graphic novel development strategy
- `product-competition.md` - Market analysis and competitive positioning

### 📖 **Narrative Design** (4 docs)
Story structure, pacing, and thematic integration

- `chapter-tree.md` - Full 30-chapter structural outline (3 acts)
- `narrative-pacing.md` - ASCII tension/stakes visualization
- `narrative-guidelines.md` - Guidelines for weaving concepts naturally
- `narrative-existentialism.md` - Philosophical depth framework

### 🔬 **Research - Influences** (4 docs)
Analysis of inspirational works and styles

- `research-authors.md` - Key author influences (Clancy, Gibson, Stephenson, etc.)
- `research-movies.md` - Film influences (The Sting, Condor, Thomas Crown, etc.)
- `research-classics.md` - Essential reading canon for preparation
- `research-successes.md` - Market viability and success analysis

### 🧠 **Research - Philosophical & Technical** (4 docs)
Deeper thematic and conceptual frameworks

- `research-debord.md` - Guy Debord & Spectacle theory integration
- `research-digital-mythology.md` - Gibson-style digital mysticism approaches
- `research-sotoshi-as-ai.md` - Satoshi-as-AI concept analysis
- `research-clear-zones.md` - Safety guidelines for avoiding legal/ethical issues

### 🎨 **Research - Format Exploration** (6 docs)
Alternative format approaches and medium-specific strategies

- `research-formats.md` - 12 alternative format options beyond traditional novel
- `research-serialisation.md` - Serialization vs full novel comparative analysis
- `research-format-audio-first.md` - Audio drama with Carpenter synth score approach
- `research-format-experimental.md` - Experimental Spectacle novel hybrid format
- `research-format-interactive.md` - Interactive fiction (Fighting Fantasy style)
- `research-format-web-world.md` - Browser-based interactive narrative universe

### ⚙️ **Action & Planning** (4 docs)
Next steps and ongoing work

- `next-steps.md` - Initial development options menu
- `next-steps-02.md` - Additional development paths
- `next-steps-03.md` - Format-specific development options
- `todo.md` - Active task list and tracking

---

## 🗂️ Alternative Organization Suggestions

### Option A: Reorganize by Workflow Stage

```
docs/01-idea/
├── 01-concept/           # Core pitch and positioning
│   ├── agentic-brief.md
│   ├── one-pager.md
│   └── idea-recap.md
├── 02-structure/         # Narrative architecture
│   ├── chapter-tree.md
│   ├── narrative-pacing.md
│   └── narrative-guidelines.md
├── 03-research/          # All research materials
│   ├── influences/
│   │   ├── research-authors.md
│   │   ├── research-movies.md
│   │   └── research-classics.md
│   └── themes/
│       ├── research-debord.md
│       ├── research-digital-mythology.md
│       ├── research-sotoshi-as-ai.md
│       └── narrative-existentialism.md
├── 04-strategy/          # Market & product strategy
│   ├── product-strategy.md
│   ├── product-competition.md
│   └── research-successes.md
└── 05-safety/            # Guidelines & guardrails
    └── research-clear-zones.md
```

### Option B: Keep Flat with Naming Convention

Current structure with prefix-based organization:
- `agentic-*` = Agent/workflow related
- `chapter-*` = Structure/outline
- `narrative-*` = Story design
- `next-steps-*` = Planning/action
- `one-pager` = Marketing/pitch
- `product-*` = Strategy/market
- `research-*` = Research materials
- `todo` = Task tracking

---

## 🎯 Recommended Approach for Agentic Workflows

For AI agent consumption and iterative development, I recommend:

### **Keep current flat structure BUT add:**

1. **Index documents** (like this README) for navigation
2. **Cross-reference tags** in YAML frontmatter
3. **Agent instruction files** that reference source docs

Example agent workflow structure:
```
docs/
├── 01-idea/              # All source material (current)
├── 02-characters/        # Character development phase
├── 03-world-building/    # World bible phase
├── 04-drafting/          # Actual writing phase
└── agents/               # Agent instruction sets
    ├── character-agent.md
    ├── scene-agent.md
    └── continuity-agent.md
```

## 📋 Document Types Reference

Based on YAML frontmatter `type` field:

- **Creative** (1) - Creative briefs and concept docs
- **Planning** (8) - Structural and strategic planning
- **Reference** (3) - Guidelines and frameworks
- **Research** (14) - Analysis and research materials
- **Strategy** (2) - Market and product strategy
- **Index** (1) - Navigation and organization

---

## 🔄 For Future Phases

Suggested phase structure:
```
docs/
├── 01-idea/           # Current: concept & research (DONE)
├── 02-develop/        # Character sheets, world bible, tone guide
├── 03-outline/        # Detailed chapter outlines
├── 04-draft/          # Draft chapters and scenes
├── 05-revise/         # Revision notes and iterations
└── 06-polish/         # Final polish and continuity
```

---

## 🤖 Agent Integration Notes

For agentic production workflows:

- All docs have consistent YAML frontmatter for parsing
- `type` field enables filtering by document category
- `status` field tracks completion state
- `description` provides quick context
- Documents are self-contained but cross-referenceable

Agents can:
1. Parse YAML to understand document purpose
2. Filter by type/status for specific tasks
3. Read descriptions before full content
4. Track updates via `updated` field
5. Build dependency graphs via cross-references

---

**Total Documents:** 27 files
**Last Updated:** 2025-11-21
**Phase Status:** Active Development

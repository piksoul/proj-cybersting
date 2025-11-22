# Research Production Skill

> Comprehensive research and ideation workflow for complex projects

## Description

This skill guides you through a structured 6-phase research production process that takes a project from initial concept to execution-ready documentation. Based on the workflow validated on **The Satoshi Protocol** creative project.

## When to Use This Skill

Use this skill when:
- ✅ Starting a new complex creative, business, or research project
- ✅ Need structured ideation and research phase
- ✅ Want comprehensive documentation before execution
- ✅ Project requires deep research across multiple domains
- ✅ Need to understand market positioning and strategy
- ✅ Want to move from vague concept to clear execution plan

**Do NOT use** for:
- ❌ Simple, single-purpose projects
- ❌ Projects with tight timelines (<2 weeks)
- ❌ Maintenance work on existing projects
- ❌ Projects where quick execution is more important than research

## Expected Outcomes

By completion, you will have:
- 📚 **28-45 comprehensive documents**
- 🎯 **Clear market positioning**
- 📋 **Actionable development options**
- 📄 **Professional pitch-ready materials**
- 🏗️ **Detailed execution structure**
- 🗂️ **Organized, navigable documentation**

---

# Instructions

## Step 1: Project Initialization

First, I need to understand your project:

**Ask the user:**

1. **What type of project is this?**
   - Creative (novel, film, game, etc.)
   - Business (startup, product, service)
   - Research (academic, technical, scientific)
   - Other (describe)

2. **What is the working title or project name?**

3. **What is the one-sentence description of your project?**

4. **What is your primary goal for this ideation phase?**
   - Understand market positioning
   - Develop comprehensive world/product bible
   - Create pitch-ready materials
   - Research influences and approaches
   - All of the above

5. **What is your timeline preference?**
   - Intensive (2-4 weeks)
   - Parallel Development (4-8 weeks)
   - Ongoing Research (8-12 weeks)

6. **Where should I create the documentation?**
   - Default: `docs/01-idea/`
   - Custom path: [user specifies]

**After gathering this information, create the project structure.**

---

## Step 2: Set Up Documentation Structure

Based on the project type and user preferences:

1. **Create the documentation directory** (e.g., `docs/01-idea/`)

2. **Initialize with a README template:**
   ```yaml
   ---
   title: Documentation Organization - 01-idea Phase
   type: Index
   project: [Project Name]
   phase: 01-idea
   status: Active
   created: [Date]
   updated: [Date]
   description: Organization and navigation guide for ideation phase documentation.
   ---
   ```

3. **Create a TODO tracker:**
   - `todo.md` - For tracking phase progress

4. **Inform the user:**
   "I've set up your documentation structure at `[path]`. Let's begin Phase 1: Research Collection."

---

## Step 3: Execute Phase 1 - Research Collection

**Goal:** Gather comprehensive research across all relevant domains

### For CREATIVE Projects:

#### 1.1 Influences & Inspiration
Guide the user through documenting:

**Ask:** "Let's start with influences. What are the key authors, creators, or works that inspire this project?"

Create documents:
- `research-authors.md` - Key author/creator influences
- `research-[medium].md` - Film, game, or other media influences (e.g., `research-movies.md`)
- `research-classics.md` - Canon reading/viewing list
- `research-successes.md` - Market success case studies

**For each, ask:**
- Who/what are the influences?
- What specific elements do you want to learn from them?
- How do they relate to your project?

#### 1.2 Thematic & Conceptual Research

**Ask:** "What are the core themes, philosophies, or concepts in your project?"

Create documents:
- `research-[theme].md` - For each major theme (e.g., `research-debord.md` for Spectacle theory)
- `research-[technical].md` - Technical/domain concepts (e.g., `research-blockchain.md`)
- `research-subcultures.md` - Cultural elements overview
- `research-subculture-[specific].md` - Deep dives on specific subcultures
- `research-locations.md` - Settings and geographic research (if applicable)

**For each, explore:**
- What is the concept/theme?
- How does it integrate into your project?
- What research sources are relevant?
- What are the key insights?

#### 1.3 Format & Medium Exploration

**Ask:** "Beyond the primary format, what alternative or experimental formats interest you?"

Create documents:
- `research-formats.md` - Overview of format options
- `research-serialisation.md` - Serialization vs complete work
- `research-format-[specific].md` - For each format option (audio, interactive, web, experimental)

**Explore:**
- What formats could this take?
- What are the pros/cons of each?
- How would format affect the experience?

#### 1.4 Strategic Research

Create documents:
- `research-approach.md` - Development strategy and methodology
- `research-authorship.md` - Authorship strategy (if relevant)
- `research-clear-zones.md` - Safety, legal, ethical guidelines

### For BUSINESS Projects:

#### 1.1 Market Research
- `research-market-overview.md` - Market size, trends, opportunities
- `research-target-users.md` - User personas and needs
- `research-user-research.md` - Interview findings, surveys

#### 1.2 Competitive Analysis
- `research-competitors.md` - Direct competitors analysis
- `research-alternatives.md` - Indirect competitors and alternatives
- `research-differentiation.md` - Market gaps and opportunities

#### 1.3 Technical Research
- `research-technology-stack.md` - Tech options and recommendations
- `research-architecture.md` - System architecture options
- `research-scalability.md` - Growth and scaling considerations

#### 1.4 Strategic Research
- `research-business-models.md` - Revenue model options
- `research-go-to-market.md` - GTM strategies
- `research-regulations.md` - Legal and regulatory landscape

### For RESEARCH Projects:

#### 1.1 Literature Review
- `research-literature-review.md` - Comprehensive lit review
- `research-key-papers.md` - Essential papers analysis
- `research-methodology-review.md` - Existing methodologies

#### 1.2 Technology/Domain Research
- `research-current-state.md` - State of the art
- `research-gaps.md` - Research gaps and opportunities
- `research-approaches.md` - Potential research approaches

#### 1.3 Application Domains
- `research-applications.md` - Potential applications
- `research-existing-solutions.md` - Current solutions analysis

**Phase 1 Success Criteria:**
- [ ] 15-25 research documents created
- [ ] All major influence areas documented
- [ ] Thematic frameworks researched
- [ ] Format/approach options explored
- [ ] Strategic considerations addressed

**Before moving on, confirm with user:** "We've completed Phase 1 with [X] research documents. Ready to move to Phase 2: Product & Market Analysis?"

---

## Step 4: Execute Phase 2 - Product & Market Analysis

**Goal:** Understand market positioning and product strategy

### 2.1 Product Strategy

**Ask the user:**
1. "What is your primary product/output format?"
2. "Are there secondary formats or adaptations you're considering?"
3. "What are your format-specific focus areas?"

Create document:
- `product-strategy.md`

**Include:**
- Primary format strategy
- Secondary formats (if applicable)
- Format-specific focus areas
- Execution strategy for multiple formats
- Development approach

### 2.2 Competitive/Market Analysis

**Ask the user:**
1. "Who are your direct competitors or comparable works?"
2. "What makes your project unique in the market?"
3. "Who is your target audience?"

Create document:
- `product-competition.md`

**Include:**
- Direct competitors/comparables
- Adjacent markets
- Unique positioning
- Market gaps and opportunities
- Target audience mapping

**Phase 2 Success Criteria:**
- [ ] Product strategy clearly defined
- [ ] Market position identified
- [ ] Competitive advantages articulated
- [ ] Target audiences mapped
- [ ] 2-3 strategy documents created

**Confirm with user:** "Phase 2 complete. Ready for Phase 3: Consolidation & Next Steps?"

---

## Step 5: Execute Phase 3 - Consolidation & Next Steps

**Goal:** Synthesize research into actionable options

### Process:

1. **Review all research documents created in Phase 1**

2. **Extract opportunities and next steps from each document**

3. **Organize by category:**

   **For Creative Projects:**
   - Story & Character Development
   - Structure & Outline
   - Worldbuilding & Lore
   - Thematic Integration
   - Format Experiments
   - Production & Planning

   **For Business Projects:**
   - Product Development
   - Market Strategy
   - Technical Architecture
   - Team & Resources
   - Go-to-Market
   - Funding & Finance

   **For Research Projects:**
   - Research Questions
   - Methodology Options
   - Experimental Design
   - Resources Needed
   - Timeline & Milestones
   - Publication Strategy

4. **Create document:**
   - `next-steps.md` - Comprehensive development options menu

**Phase 3 Success Criteria:**
- [ ] All research synthesized
- [ ] Options organized by category
- [ ] Clear development paths identified
- [ ] 1-2 next-steps documents created

**Confirm with user:** "I've consolidated [X] next steps across [Y] categories. Ready for Phase 4: Core Planning Documents?"

---

## Step 6: Execute Phase 4 - Core Planning Documents

**Goal:** Create execution-ready strategic artifacts

### 4.1 Idea Recap / Status Assessment

Work with the user to assess:

**For Creative Projects:**
- Core story/creative concept (current form)
- Strongest elements (what's working exceptionally well)
- Weak spots / gaps (what needs development)
- Opportunities (where you can expand)
- Overall status assessment

**For Business Projects:**
- Core value proposition (current form)
- Strongest differentiators
- Weak spots / risks
- Opportunities / pivots
- Overall product-market fit assessment

**For Research Projects:**
- Research questions (current form)
- Strongest hypotheses
- Weak spots / uncertainties
- Opportunities / extensions
- Overall research feasibility

Create document:
- `idea-recap.md` - Complete status assessment

### 4.2 Agentic Brief (Optional but Recommended)

High-level workflow brief:

**For Creative Projects:**
- Story summary (elevator pitch)
- Genre and comparables
- Unique selling points
- AI-agentic workflow notes (agent pipeline)

**For Business Projects:**
- Product summary
- Market and comparables
- Value proposition
- Development pipeline

Create document:
- `agentic-brief.md` - Agent workflow brief

### 4.3 One-Pager / Pitch Document

Professional pitch document:

**Ask the user:**
1. "What's the working title?"
2. "What's the one-sentence logline?"
3. "What's the 200-250 word premise summary?"
4. "What's the hook - the memorable key moment?"

Create document:
- `one-pager.md` - Professional pitch page

**Include:**
- Working title
- Genre/category and tone
- Target length/scope
- **Logline** (1-2 sentences)
- **Premise Summary** (200-250 words)
- **The Hook** (memorable moment/concept)

**Phase 4 Success Criteria:**
- [ ] Current status clearly assessed
- [ ] Strengths and gaps identified
- [ ] Professional pitch ready
- [ ] Agent workflow defined (if applicable)
- [ ] 3 core planning documents created

**Confirm with user:** "Core planning documents complete. Ready for Phase 5: Specifics & Structure?"

---

## Step 7: Execute Phase 5 - Specifics & Structure

**Goal:** Develop detailed structural and creative/product specifics

### For Creative Projects:

#### 5.1 Narrative Design

Create documents:
- `narrative-pacing.md` - Tension/stakes visualization
- `narrative-guidelines.md` - Writing/integration guidelines
- `narrative-[theme].md` - Thematic frameworks (e.g., `narrative-existentialism.md`)
- `narrative-concept-premise.md` - High-level concept
- `narrative-concept-scene-[##].md` - Key scene breakdowns

**Work with user to define:**
- Pacing structure
- Tone and style guidelines
- Philosophical/thematic depth
- Key signature scenes

#### 5.2 Structural Outline

**Ask the user:**
"What's your preferred structure?"
- 3-act structure
- 5-act structure
- Hero's journey
- Custom structure

Create document:
- `chapter-tree.md` - Complete structural outline

**Include:**
- Full chapter/section breakdown
- Act structure
- Beat sheets
- Scene breakdowns
- Pacing notes

### For Business Projects:

#### 5.1 Product Specifications

Create documents:
- `product-requirements.md` - PRD
- `product-features.md` - Feature breakdowns
- `product-roadmap.md` - Development roadmap

#### 5.2 Technical Architecture

Create documents:
- `architecture-overview.md` - System architecture
- `architecture-components.md` - Component breakdown
- `architecture-integrations.md` - Integration points

#### 5.3 Go-to-Market Plan

Create documents:
- `gtm-strategy.md` - GTM approach
- `gtm-channels.md` - Marketing channels
- `gtm-timeline.md` - Launch timeline

### For Research Projects:

#### 5.1 Research Methodology

Create documents:
- `methodology-overview.md` - Research approach
- `methodology-experimental.md` - Experimental design
- `methodology-analysis.md` - Analysis plan

#### 5.2 Research Framework

Create documents:
- `framework-theoretical.md` - Theoretical framework
- `framework-hypotheses.md` - Hypotheses and predictions
- `framework-validation.md` - Validation approach

**Phase 5 Success Criteria:**
- [ ] Approach/guidelines defined
- [ ] Structure outlined in detail
- [ ] Key moments/components identified
- [ ] Domain-specific docs created
- [ ] 5-10 specifics documents created

**Confirm with user:** "Specifics and structure complete. Ready for final Phase 6: Organization?"

---

## Step 8: Execute Phase 6 - Organization & Index

**Goal:** Create navigation and finalize organization

### 6.1 Update README/Index

Update the README with:

1. **Document count by category**
2. **Document organization by type**
3. **Alternative organization suggestions**
4. **Document types reference** (based on YAML `type` field)
5. **Workflow recommendations**
6. **Cross-reference system**

Categories to organize by:
- **Core Planning & Strategy**
- **Structural/Narrative Design** (creative) or **Technical Specs** (business/research)
- **Research - Influences**
- **Research - Thematic/Conceptual**
- **Research - Format/Strategy**
- **Action & Planning**

### 6.2 Final TODO Update

Update `todo.md` with:
- Completed phases checklist
- Next immediate actions
- Blockers or open questions
- Timeline for next phase

### 6.3 Generate Summary Report

**Present to the user:**

```
✅ Research Production Workflow Complete!

📊 Documentation Summary:
- Total Documents: [X]
- Research Docs: [X]
- Strategy Docs: [X]
- Planning Docs: [X]
- Structural Docs: [X]

✅ Phase Completion:
- ✅ Phase 1: Research Collection ([X] docs)
- ✅ Phase 2: Product & Market Analysis ([X] docs)
- ✅ Phase 3: Consolidation & Next Steps ([X] docs)
- ✅ Phase 4: Core Planning Documents ([X] docs)
- ✅ Phase 5: Specifics & Structure ([X] docs)
- ✅ Phase 6: Organization & Index ([X] docs)

📋 Key Deliverables:
- ✅ Professional pitch (one-pager.md)
- ✅ Comprehensive assessment (idea-recap.md)
- ✅ Development options (next-steps.md)
- ✅ Detailed structure ([chapter-tree.md or equivalent])
- ✅ Research foundation ([X] research docs)

🚀 Ready for Next Phase:
Based on your project type, you're now ready to move to:
[Phase 02-develop / 02-build / 02-execute]

Would you like me to:
1. Create a Phase 2 directory structure
2. Generate specific next actions based on next-steps.md
3. Begin work on [specific deliverable]
```

**Phase 6 Success Criteria:**
- [ ] All documents indexed
- [ ] Navigation clear and accessible
- [ ] Categories well-organized
- [ ] Tracking system updated
- [ ] Summary report generated

---

## YAML Frontmatter Template

For all documents created, use this standard:

```yaml
---
title: [Descriptive Title]
type: [Research|Planning|Strategy|Creative|Reference|Index]
project: [Project Name]
phase: 01-idea
status: [Active|Complete|Draft]
created: [YYYY-MM-DD]
updated: [YYYY-MM-DD]
description: [1-2 sentence summary]
---
```

---

## Quality Checkpoints

Throughout the workflow, check:

### After Phase 1:
- [ ] Are all major influence areas covered?
- [ ] Have you explored options beyond the obvious?
- [ ] Is strategic thinking documented?
- [ ] Are frameworks clear?

### After Phase 2:
- [ ] Is market position defensible?
- [ ] Are competitive advantages clear?
- [ ] Is product strategy actionable?
- [ ] Are target audiences well-defined?

### After Phase 3:
- [ ] Have all research insights been captured?
- [ ] Are next steps organized logically?
- [ ] Is there a clear path forward?

### After Phase 4:
- [ ] Can you pitch the project in one page?
- [ ] Are strengths and weaknesses clear?
- [ ] Is current status accurately assessed?

### After Phase 5:
- [ ] Is structure detailed enough to execute?
- [ ] Are key moments/components identified?
- [ ] Is pacing/flow visualized?

### After Phase 6:
- [ ] Can someone new navigate the docs?
- [ ] Is everything indexed and findable?
- [ ] Is ongoing work tracked?

---

## Adaptation Notes

This skill adapts based on project type:

- **Creative Projects:** Focus on narrative, worldbuilding, thematic depth
- **Business Projects:** Focus on market fit, technical architecture, GTM
- **Research Projects:** Focus on methodology, literature review, experimental design

Always ask clarifying questions and adapt the workflow to the specific needs of the project.

---

## Tips for Success

1. **Be thorough in Phase 1** - The research foundation determines quality of everything else
2. **Don't rush consolidation** - Phase 3 synthesis is where insights emerge
3. **Make pitch materials crisp** - Phase 4 docs should be publication-ready
4. **Detail matters in Phase 5** - Structure should be detailed enough to execute
5. **Organization enables execution** - Phase 6 makes everything findable

---

## When Complete

The user should have:
- 28-45 comprehensive, well-organized documents
- Clear understanding of market position
- Professional pitch materials
- Detailed execution structure
- Ready to begin development/execution phase

**Congratulations! The ideation phase is complete. Time to build!** 🚀

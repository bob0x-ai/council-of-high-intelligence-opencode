---
name: council
description: Multi-persona deliberation protocol — structured disagreement across diverse thinkers for complex decisions
---

# Council of High Intelligence — Skill Protocol

## Overview

18 AI personas deliberate your hardest decisions. Aristotle, Feynman, Kahneman, Torvalds & more — structured multi-round deliberation with genuine model diversity.

## The 18 Council Members

| Agent | Figure | Domain | Model | Polarity |
|-------|--------|--------|-------|----------|
| `council-aristotle` | Aristotle | Categorization & structure | glm-5 | Classifies everything |
| `council-socrates` | Socrates | Assumption destruction | glm-5 | Questions everything |
| `council-sun-tzu` | Sun Tzu | Adversarial strategy | k2p5 | Reads terrain & competition |
| `council-ada` | Ada Lovelace | Formal systems & abstraction | k2p5 | What can/can't be mechanized |
| `council-aurelius` | Marcus Aurelius | Resilience & moral clarity | glm-5 | Control vs acceptance |
| `council-machiavelli` | Machiavelli | Power dynamics & realpolitik | k2p5 | How actors actually behave |
| `council-lao-tzu` | Lao Tzu | Non-action & emergence | glm-5 | When less is more |
| `council-feynman` | Feynman | First-principles debugging | k2p5 | Refuses unexplained complexity |
| `council-torvalds` | Linus Torvalds | Pragmatic engineering | k2p5 | Ship it or shut up |
| `council-musashi` | Miyamoto Musashi | Strategic timing | k2p5 | The decisive strike |
| `council-watts` | Alan Watts | Perspective & reframing | glm-5 | Dissolves false problems |
| `council-karpathy` | Andrej Karpathy | Neural network intuition | k2p5 | How models actually learn and fail |
| `council-sutskever` | Ilya Sutskever | Scaling frontier & AI safety | glm-5 | When capability becomes risk |
| `council-kahneman` | Daniel Kahneman | Cognitive bias & decision science | glm-5 | Your own thinking is the first error |
| `council-meadows` | Donella Meadows | Systems thinking & feedback loops | k2p5 | Redesign the system, not the symptom |
| `council-munger` | Charlie Munger | Multi-model reasoning & economics | k2p5 | Invert — what guarantees failure? |
| `council-taleb` | Nassim Taleb | Antifragility & tail risk | glm-5 | Design for the tail, not the average |
| `council-rams` | Dieter Rams | User-centered design | k2p5 | Less, but better — the user decides |

## Polarity Pairs

- **Socrates vs Feynman** — Destroys top-down vs rebuilds bottom-up
- **Aristotle vs Lao Tzu** — Classifies everything vs structure IS the problem
- **Sun Tzu vs Aurelius** — Wins external games vs governs the internal one
- **Ada vs Machiavelli** — Formal purity vs messy human incentives
- **Torvalds vs Watts** — Ships concrete solutions vs questions whether the problem exists
- **Musashi vs Torvalds** — Waits for the perfect moment vs ships it now
- **Karpathy vs Sutskever** — Build it, observe it, iterate vs pause, research, ensure safety first
- **Karpathy vs Ada** — Empirical ML intuition vs formal systems theory
- **Kahneman vs Feynman** — Your cognition is the first error vs trust first-principles reasoning
- **Meadows vs Torvalds** — Redesign the feedback loop vs fix the symptom and ship
- **Munger vs Aristotle** — Multi-model lattice vs single taxonomic system
- **Taleb vs Karpathy** — Hidden catastrophic tails vs smooth empirical scaling curves
- **Rams vs Ada** — What the user needs vs what computation can do

## Triad Definitions

| Domain | Members | Rationale |
|--------|---------|-----------|
| `architecture` | Aristotle + Ada + Feynman | Classify + formalize + simplicity-test |
| `strategy` | Sun Tzu + Machiavelli + Aurelius | Terrain + incentives + moral grounding |
| `ethics` | Aurelius + Socrates + Lao Tzu | Duty + questioning + natural order |
| `debugging` | Feynman + Socrates + Ada | Bottom-up + assumption testing + formal verification |
| `innovation` | Ada + Lao Tzu + Aristotle | Abstraction + emergence + classification |
| `conflict` | Socrates + Machiavelli + Aurelius | Expose + predict + ground |
| `complexity` | Lao Tzu + Aristotle + Ada | Emergence + categories + formalism |
| `risk` | Sun Tzu + Aurelius + Feynman | Threats + resilience + empirical verification |
| `shipping` | Torvalds + Musashi + Feynman | Pragmatism + timing + first-principles |
| `product` | Torvalds + Machiavelli + Watts | Ship it + incentives + reframing |
| `founder` | Musashi + Sun Tzu + Torvalds | Timing + terrain + engineering reality |
| `ai` | Karpathy + Sutskever + Ada | Empirical ML + scaling frontier + formal limits |
| `ai-product` | Karpathy + Torvalds + Machiavelli | ML capability + shipping pragmatism + incentives |
| `ai-safety` | Sutskever + Aurelius + Socrates | Safety frontier + moral clarity + assumption destruction |
| `decision` | Kahneman + Munger + Aurelius | Bias detection + inversion + moral clarity |
| `systems` | Meadows + Lao Tzu + Aristotle | Feedback loops + emergence + categories |
| `uncertainty` | Taleb + Sun Tzu + Sutskever | Tail risk + terrain + scaling frontier |
| `design` | Rams + Torvalds + Watts | User clarity + maintainability + reframing |
| `economics` | Munger + Machiavelli + Sun Tzu | Models + incentives + competition |
| `bias` | Kahneman + Socrates + Watts | Cognitive bias + assumption destruction + frame audit |

## Profile Definitions

### `classic` (default)
All 18 members with domain triads above. Best for broad deliberation.

### `exploration-orthogonal`
12-member panel for discovery and "unknown unknowns" reduction:
- Members: Socrates, Feynman, Sun Tzu, Machiavelli, Ada, Lao Tzu, Aurelius, Torvalds, Karpathy, Sutskever, Kahneman, Meadows
- Triads: unknowns, market-entry, system-design, reframing, ai-frontier, blind-spots

### `execution-lean`
5-member panel for fast decision-to-action:
- Members: Torvalds, Feynman, Sun Tzu, Aurelius, Ada
- Triads: ship-now, launch-strategy, stability

## Multi-Provider Routing

Distribute personas across available models for genuine cognitive diversity:
- **GLM-5** (bailian-coding-plan): Aristotle, Socrates, Aurelius, Lao Tzu, Watts, Sutskever, Kahneman, Taleb
- **Kimi K2.5** (kimi-for-coding): Feynman, Torvalds, Sun Tzu, Ada, Machiavelli, Musashi, Karpathy, Meadows, Munger, Rams

**Hard constraint:** Polarity pair members MUST be on different models.

## Deliberation Modes

### Full Mode (default)
3-round structured deliberation: independent analysis → cross-examination → final positions.

### Quick Mode (`--quick`)
2-round rapid analysis for simpler decisions. No cross-examination.

### Duo Mode (`--duo`)
2-member dialectic using polarity pairs. Great for exploring tensions.

## Verdict Templates

### Council Verdict (Full Mode)

```markdown
## Council Verdict

### Problem
{Original problem statement}

### Council Composition
{Members convened, mode used, and selection rationale}

### Provider Routing
{Model assignments}

### Unresolved Questions
{Questions the council could not answer — lead with what is NOT known}

### Recommended Next Steps
{Concrete actions, ordered by priority}

### Consensus & Agreement
{Position that survived deliberation — or "No consensus reached"}

### Key Insights by Member
- **{Name}**: {Most valuable contribution}
- ...

### Points of Disagreement
{Where positions remained irreconcilable}

### Minority Report
{Dissenting positions and strongest arguments}

### Epistemic Diversity Scorecard
- Perspective spread (1-5): {orthogonality of viewpoints}
- Provider spread (1-5): {distribution across model families}
- Evidence mix: {% empirical / mechanistic / strategic / ethical / heuristic}
- Convergence risk: {Low/Medium/High}

### Follow-Up
After acting on this verdict, revisit: Was this useful? What happened?
```

### Quick Verdict

```markdown
## Quick Council Verdict

### Problem
{Original problem statement}

### Panel
{Members and selection rationale}

### Recommended Action
{Single concrete recommendation}

### Positions
- **{Name}**: {Core position}
- ...

### Consensus
{Majority position or "Split"}

### Key Disagreement
{Most important divergence}

### Follow-Up
After acting, revisit: Was this useful? What happened?
```

### Duo Verdict

```markdown
## Duo Verdict

### Problem
{Original problem statement}

### The Dialectic
**{Member A}** ({lens}) vs **{Member B}** ({lens})

### What This Means for Your Decision
{How to use opposing perspectives}

### {Member A}'s Position
{Core argument}

### {Member B}'s Position
{Core argument}

### Where They Agree
{Unexpected convergence}

### The Core Tension
{Irreducible disagreement}

### Follow-Up
After deciding, revisit: Which perspective proved more useful?
```

## Enforcement Mechanisms

- **Anti-recursion:** Socrates gets 3-level depth limit. No re-asking answered questions. Round 3: exactly ONE question, then state position.
- **Dissent quota:** At least 2 members must articulate non-overlapping objections. If fewer, force dissent.
- **Novelty gate:** Round 2 must add new claims not in Round 1. If missing, send back.
- **Agreement check:** If >70% agree on core position, force 2 likely dissenters to steelman opposing view.
- **Evidence labels:** Claims tagged as empirical | mechanistic | strategic | ethical | heuristic.

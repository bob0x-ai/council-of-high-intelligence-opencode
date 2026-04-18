# Council of High Intelligence for OpenCode

18 AI personas that deliberate on your hardest decisions — adapted for [OpenCode](https://opencode.ai), the open-source AI coding agent.

## What is this?

A multi-persona deliberation system where historical thinkers (Aristotle, Feynman, Kahneman, Torvalds, and 14 more) analyze complex decisions through structured disagreement. Each persona is modeled as an OpenCode subagent with distinct analytical methods, blind spots, and polarities.

## Why OpenCode?

Unlike Claude Code's single-provider architecture, this adaptation distributes personas across **multiple models** for genuine cognitive diversity:

| Model | Personas | Thinking Style |
|-------|----------|----------------|
| **GLM-5** | Aristotle, Socrates, Aurelius, Lao Tzu, Watts, Sutskever, Kahneman, Taleb | Deep reasoning, philosophy, safety |
| **Kimi K2.5** | Feynman, Torvalds, Sun Tzu, Ada, Machiavelli, Musashi, Karpathy, Meadows, Munger, Rams | Empirical, pragmatic, building |

## The 18 Council Members

| Persona | Domain | Polarity |
|---------|--------|----------|
| **Aristotle** | Categorization & structure | Classifies everything |
| **Socrates** | Assumption destruction | Questions everything |
| **Sun Tzu** | Adversarial strategy | Reads terrain & competition |
| **Ada Lovelace** | Formal systems & abstraction | What can/can't be mechanized |
| **Marcus Aurelius** | Resilience & moral clarity | Control vs acceptance |
| **Machiavelli** | Power dynamics & realpolitik | How actors actually behave |
| **Lao Tzu** | Non-action & emergence | When less is more |
| **Feynman** | First-principles debugging | Refuses unexplained complexity |
| **Linus Torvalds** | Pragmatic engineering | Ship it or shut up |
| **Musashi** | Strategic timing | The decisive strike |
| **Alan Watts** | Perspective & reframing | Dissolves false problems |
| **Karpathy** | Neural network intuition | How models actually learn and fail |
| **Sutskever** | Scaling frontier & AI safety | When capability becomes risk |
| **Kahneman** | Cognitive bias & decision science | Your own thinking is the first error |
| **Meadows** | Systems thinking & feedback loops | Redesign the system, not the symptom |
| **Munger** | Multi-model reasoning & economics | Invert — what guarantees failure? |
| **Taleb** | Antifragility & tail risk | Design for the tail, not the average |
| **Dieter Rams** | User-centered design | Less, but better — the user decides |

## Installation

```bash
# Clone and install
git clone https://github.com/yourusername/council-of-high-intelligence-opencode.git
cd council-of-high-intelligence-opencode
./install.sh
```

This installs:
- `/council` command → `~/.config/opencode/commands/`
- 18 persona agents → `~/.config/opencode/agents/`
- Coordinator agent → `~/.config/opencode/agents/`
- Skill documentation → `~/.config/opencode/skills/council/`

## Usage

```bash
# Full deliberation (3 rounds, auto-selected panel)
/council Should we migrate to microservices?

# Quick mode (2 rounds)
/council --quick Should we add Redis caching?

# Duo dialectic (2-member polarity pair)
/council --duo Should we build or buy?

# Specific domain triad
/council --triad strategy What's our competitive moat?

# Custom panel
/council --members socrates,feynman,ada Is our architecture sound?

# Profile panel
/council --profile execution-lean Should we ship this feature?
```

## Deliberation Modes

### Full Mode (default)
3-round structured deliberation:
1. **Independent Analysis** — Each persona analyzes blind-first
2. **Cross-Examination** — Members engage each other's positions
3. **Final Crystallization** — 100-word position statements

### Quick Mode (`--quick`)
2-round rapid analysis for time-sensitive decisions.

### Duo Mode (`--duo`)
2-member dialectic using polarity pairs (e.g., Socrates vs Feynman).

## Available Triads

Pre-built 3-member panels for specific domains:

| Triad | Members | Use For |
|-------|---------|---------|
| `architecture` | Aristotle + Ada + Feynman | System design, technical decisions |
| `strategy` | Sun Tzu + Machiavelli + Aurelius | Competitive positioning, market entry |
| `ethics` | Aurelius + Socrates + Lao Tzu | Moral dilemmas, duty conflicts |
| `debugging` | Feynman + Socrates + Ada | Root cause analysis, bug hunting |
| `ai-safety` | Sutskever + Aurelius + Socrates | AI alignment, capability-risk tradeoffs |
| `design` | Rams + Torvalds + Watts | UX decisions, product simplification |
| `decision` | Kahneman + Munger + Aurelius | High-stakes choices, bias detection |
| `shipping` | Torvalds + Musashi + Feynman | Release timing, feature scope |

*(20 triads total — see `skills/council/configs/triads.yaml`)*

## Architecture

```
council/
├── commands/
│   └── council.md              # /council slash command entry point
├── agents/
│   ├── coordinator.md          # Orchestrates deliberation
│   ├── council-aristotle.md    # Persona subagents (18 files)
│   ├── council-socrates.md
│   └── ...
└── skills/
    └── council/
        ├── SKILL.md            # Protocol documentation
        └── configs/
            ├── triads.yaml     # Triad definitions
            └── profiles.yaml   # Panel profiles
```

## How It Works

1. **User invokes `/council`** — Command parses mode and panel selection
2. **Coordinator loads** — Reads skill protocol and persona definitions
3. **Multi-provider routing** — Assigns personas to GLM-5 or Kimi K2.5
4. **Parallel spawning** — Task tool spawns persona subagents for each round
5. **Structured deliberation** — Independent → Cross-exam → Final positions
6. **Verdict synthesis** — Coordinator produces formatted verdict

## Enforcement Mechanisms

- **Dissent quota** — At least 2 members must articulate non-overlapping objections
- **Novelty gate** — Each round must add new insight not present in previous rounds
- **Anti-recursion** — Socrates gets 3-level questioning depth limit
- **Agreement check** — If >70% agree, force 2 dissenters to steelman opposing view

## Configuration

### Model Assignments

Edit agent frontmatter to change model assignments:

```yaml
---
model: bailian-coding-plan/glm-5   # or kimi-for-coding/k2p5
---
```

### Adding New Personas

1. Create `agents/council-{name}.md` with OpenCode agent frontmatter
2. Add to `skills/council/configs/triads.yaml` for triad membership
3. Add polarity pairs in `agents/coordinator.md`
4. Reinstall with `./install.sh`

## Testing

```bash
# Run a test deliberation
/council --quick Which memory system should I use?
```

## Credits

Adapted from [Council of High Intelligence](https://github.com/0xNyk/council-of-high-intelligence) by 0xNyk for Claude Code.

## License

MIT

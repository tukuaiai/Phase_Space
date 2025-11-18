# CLAUDE.md

> **Note**: This document has been reviewed and updated by Gemini to reflect the current state of the "Phase Space Expansion" project as of 2025-11-18.

This file provides guidance to Claude (claude.ai) when working with this repository.

---

## 1. Project Overview

**Project Name**: 相空间拓展计划 (Phase Space Expansion)
**Type**: Philosophical Research Framework + Knowledge Repository
**Primary Language**: Chinese (with English translations)
**Status**: Phase 0 - Foundation Building (Active Research)

This is **NOT a traditional software project**. It is a long-term philosophical and scientific research initiative aimed at systematically eliminating three dimensions of human scarcity: time (longevity), cognition (BCI/memory editing), and energy (entropy efficiency).

### Core Philosophy

The project applies rigorous engineering principles to its documentation and structure:
- **KISS** (Keep It Simple, Stupid): Simplicity over complexity.
- **DRY** (Don't Repeat Yourself): Eliminate duplication by creating a single source of truth.
- **SOLID**: Principles applied to documentation structure for clarity and maintainability.

### Three Dimensions of Focus

1.  **Time Liberation (⏳)**: Achieving Longevity Escape Velocity (LEV), where `ΔLE ≥ 1 year/year`.
2.  **Cognitive Liberation (🧠)**: Using Brain-Computer Interfaces (BCI) and neural editing to make any desired state achievable, `P(realization) ≈ 1`.
3.  **Energy Liberation (⚡)**: Optimizing system efficiency towards the theoretical maximum, `η → 1`, and minimizing entropy increase, `ΔS → 0`.

---

## 2. Project Structure (Post-Refactoring)

```
Life_new/
├── README.md                      # Main project overview (Chinese)
├── README.en.md                   # Main project overview (English)
├── AGENTS.md                      # General AI agent guidelines
├── CLAUDE.md                      # Claude-specific guide (this file)
├── LICENSE                        # CC BY 4.0 License
├── Makefile                       # Build system for generating reports
│
├── docs/                          # Core theoretical documentation
│   ├── Phase_Space_Expansion_Roadmap.md         # The primary strategic document
│   ├── Human_3.0_Technical_Blueprint_Academic.md  # English technical paper
│   ├── Human_3.0_Technical_Blueprint_Academic_zh.md # Chinese technical paper
│   ├── 人类3.0未来蓝图_社交媒体版.md            # Social media version
│   ├── 实践指南.md                              # Practical guide for contributors
│   ├── 情绪建模与注入.md                        # Philosophical exploration of emotion tech
│   └── 本体论分岔_体验机器终局.md             # Philosophical guardrail document
│
├── archives/                      # Archival directory
│   ├── audit/                     # Auditing frameworks
│   │   └── 物理极限审计.md
│   ├── reviews/                   # Review checklists
│   │   └── 评审清单.md
│   └── deprecated_docs/           # Old, superseded documents
│
├── data/                          # Data templates and references
│   ├── health_tracking_template.yaml
│   └── refs/
│
└── out/                           # Build output directory (created by make)
```

---

## 3. Build & Workflow

### Build System
- **Command**: `make all` to build all documentation (HTML + PDF) into the `out/` directory.
- **Clean**: `make clean` to remove build artifacts.
- **Requirements**: `pandoc`, `make`, `texlive-xetex`.

### Git Workflow
- **Repository**: Private GitHub repository at `https://github.com/tukuaiai/Phase_Space`.
- **Branching**: All work should be done on feature branches and submitted via Pull Request.
- **Commits**: Use detailed, structured commit messages. Per project guidelines, commits should be frequent and pushed regularly to the private remote to ensure no work is lost.

---

## 4. Key Documents & Entry Points

- **To understand the project vision**: Start with `README.md`.
- **To understand the execution plan**: Read `docs/Phase_Space_Expansion_Roadmap.md`.
- **To understand how to contribute**: Read `docs/实践指南.md`.
- **To understand the project's philosophical risks**: Read `docs/本体论分岔_体验机器终局.md`.
- **To assess technical proposals**: Use the framework in `archives/audit/物理极限审计.md`.
- **To review contributions**: Use the checklist in `archives/reviews/评审清单.md`.

---

## 5. Special Instructions for Claude

- **Maintain Formality**: This is an academic research project. The tone should remain professional and rigorous.
- **Respect Bilingual Parity**: When editing a document, check if a corresponding version in another language exists and suggest updating it for consistency.
- **Preserve Core Concepts**: Do not alter the core philosophical tenets or the three-dimensional framework.
- **Acknowledge Physical Limits**: All technical discussions must respect the physical boundaries outlined in the audit framework (Bekenstein, Landauer, etc.).
- **Handle "永生" (Immortality) carefully**: This term is now used to describe a sub-goal within the "Time Liberation" dimension, not as the project's main title. The official project name is "相空间拓展计划 (Phase Space Expansion)".
- **Contact Information**: The official contact email is now `contact@phasespace.org` (to be established). Please use this for any new or updated documents.
- **No Emojis**: Do not use emojis in core documents unless it is the social media version.

---

**Last Updated**: 2025-11-18
**For Questions**: Refer to GitHub Issues or the documentation hierarchy described above.

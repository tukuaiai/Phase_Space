# Repository Guidelines

## Project Structure & Module Organization
- `docs/` — Core theoretical documentation (e.g., `docs/实践指南.md`, `docs/implementation_roadmap.md`, `docs/情绪建模与注入.md`).
- `archives/` — Historical documents and archived materials (e.g., `archives/技术路线图对比分析.md`).
- `data/{evidence,refs}/` — Datasets and references that back claims (structure ready, content pending).
- `out/` — Build output directory for generated HTML/PDF reports (created by `make` command).
- `.history/` — VS Code local history backups (auto-generated, not manually edited).
- `.github/` — GitHub configuration, issue/PR templates, and CI/CD workflows.
- Root files: `README.md`, `AGENTS.md`, `CLAUDE.md`, `Makefile` — Core project files.

## Build, Test, and Development Commands
- `make` or `make all` — build complete documentation to `out/report.{html,pdf}` from source files in `docs/` (requires `pandoc` + `texlive-xetex`).
- `make clean` — remove build artifacts in `out/`.
- Verify `pandoc` availability: `pandoc -v`.
- Open result locally: `out/report.html`.
- No automated tests - manually verify documentation builds and renders correctly.

## Coding Style & Naming Conventions
- Markdown: ATX headings (`#`), one H1 per file, Title Case for H1/H2.
- Lists and code blocks: use fenced blocks with language hints.
- File names: keep existing names; for new dated docs prefer `topic_YYYY-MM-DD.md` or `主题_YYYYMMDD.md`.
- YAML/JSON: 2‑space indentation. Makefile recipes must use tabs.

## Testing Guidelines
- A change is “green” when `make` succeeds and outputs both HTML/PDF.
- For substantial docs, manually check headings, tables, links, and images render.
- If adding datasets, include a short README in the same folder describing schema and source.

## Commit & Pull Request Guidelines
- Commit messages: imperative mood, concise subject (≤72 chars), body with why/what/impact.
- Group related changes; avoid mixed doc/data/logical changes in one commit.
- Use `.github/pull_request_template.md`; link issues (e.g., `Fixes #123`).
- Include before/after screenshots for visual changes; update `CHANGELOG.md` for user‑visible updates.

## Security & Agent Notes
- Do not commit secrets or private data. Redact PII in `archives/`.
- Agents and contributors: keep patches minimal, avoid renames that break links, prefer adding over rewriting. When uncertain, open an Issue before large moves.

---

**Last Updated**: 2025-11-18
**Repository**: https://github.com/tukuaiai/Phase_Space_Expansion

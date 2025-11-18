# AI Agent Repository Guidelines

This document provides essential guidelines for AI agents contributing to this repository.

---

## 1. Project Structure

The repository is organized as a "documentation-as-code" project. Key directories include:

-   `docs/`: Core theoretical documentation (whitepapers, roadmaps, guides).
-   `archives/`: Historical documents, audit frameworks, and review checklists.
-   `data/`: Data templates, references, and evidence supporting the research.
-   `out/`: Build output directory for generated reports (HTML, PDF).
-   `.github/`: Issue templates, PR templates, and other GitHub-specific configurations.
-   **Root Files**: `README.md`, `Makefile`, and agent-specific guides like this one.

---

## 2. Build, Test, and Development

-   **Build Command**: `make all`
    -   This command uses `pandoc` to compile source documents (primarily from `docs/`) into final report formats (`out/report.html`, `out/report.pdf`).
    -   **Requires**: `pandoc`, `make`, `texlive-xetex`.
-   **Clean Command**: `make clean`
    -   Removes all build artifacts from the `out/` directory.
-   **Testing**:
    -   A change is considered successful if `make all` completes without errors.
    -   For significant changes, manually inspect the generated `out/report.html` to ensure all content (headings, tables, links, images) renders correctly.

---

## 3. Contribution & Style Conventions

### Coding & Naming
-   **Markdown**: Use standard GitHub Flavored Markdown (GFM). Use ATX headings (`#`) and ensure a logical heading hierarchy.
-   **File Naming**: Preserve existing file names. For new documents, use a descriptive name, preferably in English with `_` as a separator (e.g., `new_concept_paper.md`). If the document is a direct translation, use the `_zh` suffix (e.g., `document_name_zh.md`).
-   **YAML/JSON**: Use 2-space indentation.
-   **Makefile**: All recipe lines **must** use tabs, not spaces.

### Commits & Pull Requests
-   **Commit Messages**: Write clear and concise commit messages. The subject line should be in the imperative mood (e.g., "Update" not "Updated"). The body should explain the "what" and "why" of the change.
-   **Atomic Commits**: Group related changes into a single, logical commit.
-   **Pull Requests**: Use the provided PR template in `.github/`. If the PR addresses an issue, link it (e.g., `Fixes #123`).

---

## 4. General Agent Guidelines

-   **Safety First**: Do not commit secrets, API keys, or any personally identifiable information (PII).
-   **Minimize Scope**: Keep changes minimal and focused on the requested task. Avoid unnecessary refactoring or file renames that could break internal links.
-   **Prefer Adding over Rewriting**: When possible, add new, well-structured content rather than completely rewriting existing documents, unless specifically instructed.
-   **When in Doubt, Ask**: If a requested change is ambiguous or seems to conflict with project principles, open an Issue to ask for clarification before proceeding with major changes.

---

**Last Updated**: 2025-11-18
**Repository**: https://github.com/tukuaiai/Phase_Space

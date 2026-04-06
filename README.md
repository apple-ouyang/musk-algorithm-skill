# Musk Algorithm Skill

Public research corpus and self-authored agent skill for Elon Musk's five-step working method ("The Algorithm").

中文说明见：[README.zh-CN.md](./README.zh-CN.md)

## Install

```bash
npx skills add apple-ouyang/musk-algorithm-skill
```

## Scope

This repository is intentionally scoped to:

- primary and secondary public sources relevant to the five-step method
- normalized Markdown copies of those sources
- a reusable agent skill built from the corpus
- lightweight evals and helper scripts

It is not an attempt to mirror every public article ever written about Elon Musk.

## Layout

- `sources/`: source index and metadata
- `corpus/primary/`: normalized Markdown from primary or near-primary sources
- `corpus/secondary/`: normalized Markdown from secondary coverage
- `skills/musk-5-step-algorithm/`: the skill package
- `docs/`: design notes, assumptions, and progress docs

## Working Assumptions

- The user requested a public GitHub repository.
- The corpus centers on Musk's five-step work method and its startup/manufacturing context.
- Source preservation favors traceable excerpts, summaries, and links over bulk copying.

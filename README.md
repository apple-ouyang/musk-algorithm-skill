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

## Referenced Articles

- [Starbase Tour and Interview with Elon Musk](https://everydayastronaut.com/starbase-tour-and-interview-with-elon-musk/): the strongest public source for the ordered five-step list and the clearest compact explanation of the method.
- [Elon Musk | Britannica Money](https://www.britannica.com/money/Elon-Musk): a concise third-party timeline connecting PayPal, SpaceX, Tesla, Neuralink, X, and later ventures.
- [xAI | Britannica Money](https://www.britannica.com/money/xAI): useful background for placing xAI in Musk's later company stack without overstating its connection to the five-step method.
- [TechCrunch coverage of Musk's automation reversal](https://techcrunch.com/2018/04/13/elon-musk-admits-excessive-automation-at-tesla-was-a-mistake/): the best short public source for “excessive automation at Tesla was a mistake” and “Humans are underrated.”
- [Tesla Q1 2018 Update Letter / earnings discussion mirror](https://platform.aeronaut.ai/docs/tsla/letters/2018-q1-update-letter): the clearest public case material for the FlufferBot episode and the “do we actually need that part?” decision path.
- [CNBC / Gayle King interview coverage](https://www.cnbc.com/2018/11/02/elon-musk-tesla-nearly-died-model-3-production-hell-was-excruciating.html): a strong production-hall case for over-complex conveyor systems, staging mistakes, and deleting infrastructure instead of tuning it.
- [An Evening with Elon Musk transcript (Henry Ford)](https://www.thehenryford.org/docs/default-source/default-document-library/default-document-library/transcript_musk_full-length.pdf/?sfvrsn=0): background source for first-principles language that helps explain the philosophical layer underneath the algorithm.

## Working Assumptions

- The user requested a public GitHub repository.
- The corpus centers on Musk's five-step work method and its startup/manufacturing context.
- Source preservation favors traceable excerpts, summaries, and links over bulk copying.

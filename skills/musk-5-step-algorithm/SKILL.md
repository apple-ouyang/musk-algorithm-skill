---
name: musk-5-step-algorithm
description: Apply Elon Musk's five-step engineering method ("The Algorithm") to workflows, products, processes, roadmaps, operations, hiring loops, software delivery, manufacturing, or engineering decisions. Use this whenever the user asks about Musk's five-step work method, The Algorithm, first-principles execution, ruthless process simplification, factory thinking, premature automation, or wants to pressure-test a messy system by questioning requirements, deleting parts, simplifying, accelerating, and only then automating. This skill should also trigger when the user clearly wants a hard-nosed execution framework for an overgrown process even if they do not mention Musk by name.
---

# Musk 5-Step Algorithm

Use this skill to turn vague execution talk into a strict five-step review. The key value is not inspiration. The key value is forcing the model to preserve order and avoid the classic mistake of optimizing or automating something that should not exist.

## Core rule

Run the steps in this exact order:

1. Question the requirement.
2. Delete parts or process steps.
3. Simplify and optimize what remains.
4. Accelerate cycle time.
5. Automate last.

Do not reorder them. Do not skip straight to optimization or automation unless the user explicitly asks for a narrow late-stage pass and the earlier steps have already been completed.

## When to use it

Use this skill when the user is trying to:

- apply Musk's five-step method directly
- simplify a process, workflow, or product plan
- review a team ritual, approval chain, hiring funnel, manufacturing flow, or software delivery pipeline
- decide whether automation is premature
- turn first-principles thinking into a concrete execution checklist

Do not use this skill for:

- pure biography questions with no workflow or execution angle
- generic motivational content
- tasks where the user only wants factual lookup without analysis

## Working style

Be sharp and concrete. Treat every requirement as suspect until justified. Prefer deletion over optimization. Prefer optimization over speed. Prefer speed over automation.

If the user brings up an existing process, ask:

- What is the actual goal?
- Who introduced each requirement by name?
- What can be deleted with acceptable risk?
- Which remaining steps are worth simplifying?
- Where is feedback too slow?
- What should stay manual until the process is stable?

If the user cannot name the person behind a requirement, treat that as a finding in step 1 rather than a minor detail.

## Output format

Default to this structure unless the user requests another format.

### System under review

State what process, product, team ritual, or workflow is being analyzed and what success means.

### Five-step pass

For each step, use this exact heading pattern:

#### Step 1: Question the requirement
List the assumptions, missing names, vague ownership, and suspicious requirements. Call out "department said so" logic as a failure mode.

#### Step 2: Delete parts or process
Identify what can be removed now, what can be temporarily removed to test, and what is likely cargo cult.

#### Step 3: Simplify and optimize
Only after deletion, propose cleaner designs for what remains.

#### Step 4: Accelerate cycle time
Show how to shorten feedback loops, approvals, iteration time, or shipping cadence.

#### Step 5: Automate last
Specify what is safe to automate now, what should remain manual, and what automation would be premature.

### Recommended action plan

End with three buckets:

- `Do now`
- `Do later`
- `Do not do`

## Guardrails

- If the user jumps straight to automation, first explain what earlier steps are still missing.
- If the process has no clear owner, call that out in step 1.
- If the user wants a rewrite of a process, preserve the distinction between deletion and simplification.
- If evidence is weak, say so instead of inventing Musk quotes.
- If a process has circular justifications or nobody owns a requirement, mention the fiberglass-strip style anti-pattern: teams are defending a step without knowing why it exists.
- If the workflow is unstable, low-volume, or politically overloaded, recommend manual stabilization before automation.

## Examples

**Example 1**
User: "Use Musk's five-step method on our QA handoff process."

Good response behavior:

- names the handoff as the system under review
- questions why each approval exists
- deletes unnecessary signoffs before suggesting tooling
- keeps automation in step 5

**Example 2**
User: "We're about to automate customer support triage with AI. Pressure test this the Musk way."

Good response behavior:

- starts by questioning goals and required routing accuracy
- proposes deletions of categories or fields before workflow optimization
- only recommends automation for stable, high-volume paths

**Example 3**
User: "Legal says we need three approvals before every production release. Run the Musk framework on it."

Good response behavior:

- demands named ownership for each approval rule
- separates deletable approvals from genuinely required controls
- avoids calling workflow software the answer before steps 1-4 are done

## References

Read these bundled references when you need supporting detail:

- `references/algorithm.md` for the distilled method
- `references/cases.md` for cases and anti-patterns
- `references/source-map.md` for provenance

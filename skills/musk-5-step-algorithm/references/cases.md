# Cases And Anti-Patterns

## Cases

### Manufacturing or operations

Use the full five-step pass. These are the most natural fit because the original public framing came from engineering and production contexts.

### Software delivery

The same method still works:

- requirements become tickets, policies, or acceptance criteria
- parts or process become meetings, handoffs, checks, forms, or tools
- cycle time becomes merge, deploy, or feedback latency

### Team process

This method is useful for approval chains, recruiting loops, planning rituals, QA signoff, incident reviews, and roadmapping rituals.

### Requirement ownership case

The research corpus now strongly supports a stricter interpretation of step 1: a requirement should point to a specific person, not an abstract department. This is important because many modern software and operations teams inherit vague process rules with no accountable owner.

### Fiberglass-strip style case

Use the production-hell style anecdote as an explanatory pattern: one team says a step exists for reason A, another says reason B, and nobody owns the truth. In those cases, the skill should treat the requirement as untrusted until proven.

## Anti-patterns

### Anti-pattern 1: optimize first

If the user asks how to speed up or tune a process that has not been questioned or reduced, call that out directly.

### Anti-pattern 2: automate chaos

If the workflow is unstable, low-volume, or full of vague requirements, recommend manual stabilization before automation.

### Anti-pattern 3: motivational fluff

The user is usually looking for a framework, not hero worship. Keep the answer operational.

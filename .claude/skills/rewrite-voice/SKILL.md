---
name: rewrite-voice
description: Rewrites text to match Josue's blog writing voice — conversational, rigorous, teaching-by-discovery. Use when the user wants to transform draft text into their natural writing style.
argument-hint: <text or file path>
---

# Rewrite in Josue's Voice

You are rewriting text to match a specific writing voice. The input is provided as `$ARGUMENTS` — it may be either inline text or a file path. If it looks like a file path, read the file first.

Rewrite the text following the voice profile below. **Preserve all technical content, math notation, code blocks, and factual claims exactly.** Only transform the prose — the way ideas are expressed, not the ideas themselves.

Output the rewritten text directly with no preamble or commentary.

---

## Voice Profile

### Tone and Register
- Conversational, collegial, teaching-by-discovery. You're a patient peer walking the reader through an idea, not lecturing from above.
- Use contractions freely: "you'd", "we'll", "let's", "doesn't", "I've".
- Never stiff, never overly academic. But never flippant either — the rigor is real, the tone is warm.

### Reader Relationship
- Heavy use of "you" and "we" — the reader is a participant in reasoning, not a passive observer.
- Favor invitations: "Let's simulate...", "Suppose we observe...", "You might notice that..."
- Use "we" when walking through shared reasoning ("we fail to reject", "we need to work out").
- Use "I" sparingly, mainly for framing: "I'd like to point out", "I invite you to read on".

### Sentence Rhythm
- Mix short punchy statements for emphasis with longer flowing explanations.
- Short sentences land key points: "There's the problem." / "Such is life." / "That's it."
- Longer sentences develop ideas. Average 15–25 words per sentence.
- Vary length deliberately — don't let every sentence be the same shape.

### Transitions
- Use action-oriented invitations: "Let's now...", "To make this concrete...", "Just to be sure, let's expand on this..."
- Conversational connectors: "So", "But", "Now", "Here's the problem", "Okay, so..."
- Avoid stiff academic transitions ("Furthermore", "Moreover", "It is important to note that").

### Explanatory Pattern
- Lead with motivation and stakes — why should the reader care?
- Then intuition before formalism.
- Then the math or technical detail.
- Then a concrete example (with specific numbers).
- Then interpret results back to the original question.
- This layered approach is the signature structure.

### Vocabulary
- Technical terms used precisely but explained in context when first introduced.
- Casual phrasing lives alongside rigor: "looks great at first glance", "a flood of false alarms", "Such is life when..."
- Prefer "let's" over "we will". Prefer "suppose" or "say" over "assume" when setting up scenarios.
- Use "For example" and "To illustrate" to signal concrete instances.

### Math and Code Integration
- Define notation in context, not in a separate notation section.
- Weave inline math naturally into sentences: "where $\bar{x}$ denotes the sample mean".
- After code output, immediately interpret what the numbers mean — never leave results hanging.

### Distinctive Habits
- Rhetorical questions that guide reasoning: "You might even recall asking yourself why that is the case."
- Parenthetical asides for color: "(this is the $p$-value we computed above)"
- "Such is life when..." as understated acknowledgment of unfortunate realities.
- "Just to be sure, let's..." when expanding an example for confirmation.
- End sections with personal stance and practical implications, not just summary.
- Footnotes for tangential but interesting points.

---

## What NOT to Do
- Do not make the writing more formal or academic.
- Do not add hedging language ("it could be argued that", "one might suggest").
- Do not remove personality or flatten the voice into generic technical prose.
- Do not change any math, equations, code, or technical claims.
- Do not add content that wasn't in the original — only reshape how existing ideas are expressed.
- Do not add emojis.

---

## Example Transformation

**Before (generic academic):**
> It is well established that confidence intervals are frequently misinterpreted. The standard interpretation states that if one were to repeat the experiment many times, 95% of the resulting intervals would contain the true parameter value. However, an alternative interpretation exists that may be more useful for practitioners.

**After (Josue's voice):**
> You might recall a statistics professor telling you that a 95% confidence interval means that if you repeated the experiment many times, 95% of those intervals would contain the true parameter. That's correct — but it's not the whole story. There's an alternative interpretation that I think is more useful in practice. Let's walk through it.

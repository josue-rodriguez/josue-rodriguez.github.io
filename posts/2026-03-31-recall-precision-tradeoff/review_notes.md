# Copy-Edit Review: Why base rates cap your precision

## Core intent
When the positive class is rare, the base rate puts a hard ceiling on precision — even for strong classifiers. Practitioners should compute that ceiling before investing in model tuning, because the gap between what a model *can* achieve and what a 95/5 split *feels like* it should achieve is often enormous.

## Major issues

1. **Duplicate introductory text for the ROC/PR curves section.** Two nearly identical sentences appear within 10 lines of each other:

   Line 296–297:
   > "With the threshold sweep in hand, let's compute both the ROC curve and the Precision-Recall curve and show them side by side."

   Line 306–307:
   > "Let's compute both the ROC curve and the Precision-Recall curve (where recall is just another name for TPR) from the same threshold sweep and show them side by side — ROC on the left, PR at different prevalences on the right."

   This reads as a revision artifact where one version should have been deleted. The second version is strictly better — it adds the recall/TPR clarification and orients the reader to the plot layout.

   **Suggested fix:** Delete lines 296–297 ("With the threshold sweep in hand...") entirely. Let the code block follow directly from the section header, and keep the second version as the only narrative lead-in to the plot.

2. **The caveat paragraph in "Digging deeper" interrupts the section's narrative arc.** The opening paragraph sets up a strong promise: TPR and FPR are coupled through the threshold, so "the precision picture may be even worse." The reader is primed for the payoff — the bilogistic model. But then this intervenes:

   > "One thing to keep in mind: a model that can simultaneously achieve 0.95 TPR and 0.05 FPR is very strong. In practice, most classifiers won't reach that level of separation — so the curves that follow should be treated as optimistic upper bounds on what precision is achievable. The real-world picture is often messier."

   This is the *same point* the preceding paragraph just made ("the precision picture may be even worse"), restated in different language. It also delays the arrival of the bilogistic model, which is what the reader now wants to see.

   **Suggested fix:** Fold the key insight into the preceding paragraph as a single sentence, then move directly to the bilogistic model introduction. For example, end the first paragraph with: "So the precision picture may be even worse once we account for the TPR-FPR coupling — and keep in mind that a model achieving 0.95/0.05 simultaneously is already very strong, so what follows is an optimistic bound."

## Minor issues

1. **The forward reference to threshold coupling slightly deflates the setup.** Line 56:

   > "For now, we're treating TPR and FPR as independent knobs, but in practice they're coupled through the decision threshold."

   This appears between the model's table and "At first glance, this looks great." The aside is important information, but its placement softens the "this looks great" reaction that needs to be strong for the precision reveal to land. The reader hasn't yet seen why the coupling matters, so it reads as a premature caveat.

   **Suggested fix:** Move this sentence to the end of the paragraph, after "So how costly is this model, really?" It works as foreshadowing there — planting the seed that gets paid off in "Digging deeper" — without interrupting the evaluation of the model.

2. **"Recall" as a term appears without introduction until line 306.** The section header says "Precision-Recall curves," the plot axis says "Recall," but the reader isn't told that recall = TPR until a parenthetical ten lines later. A reader less familiar with the synonymy has a small friction point.

   **Suggested fix:** Introduce the synonym earlier. Either when TPR is first defined in the introduction ("the *true positive rate*, also called *recall*") or in the section header itself ("Precision-Recall curves, where recall is just another name for TPR").

3. **The cost calculation's backward reference could be smoother.** Line 181:

   > "Going back to our 1% prevalence example with precision at 0.16..."

   The preceding paragraph established a general pattern ("The base rate acts as a hard ceiling on precision. And that ceiling has direct cost implications."). Then the next sentence zooms back to a specific example without bridging the shift. "Direct cost implications" is the bridge, but it's doing double duty as a closing line for the pattern discussion *and* a transition to the concrete example.

   **Suggested fix:** Let "direct cost implications" live at the start of the next paragraph as a transition: "That ceiling has direct cost implications. At 1% prevalence with precision at 0.16, 84 out of every 100 flagged transactions trigger unnecessary reviews..."

4. **Mild redundancy in the ROC invariance discussion.** Lines 362–363:

   > "In low-prevalence settings, a near-perfect AUROC can be actively misleading — it tells you the model separates well, but says nothing about how many of your flags will be wrong."

   The preceding sentences already establish that ROC is invariant to prevalence and can't tell you about false positives in practice. This is the third pass at the same idea in one paragraph.

   **Suggested fix:** Cut this sentence, merge its strongest part ("actively misleading") into the preceding sentence.

5. **Section header "Why base rates matter" overlaps with the post title.** Both promise to explain why base rates matter. The header doesn't signal what makes *this section* distinct from the post as a whole.

   **Suggested fix:** Something more specific — "A simple example" — would distinguish the section from the title and orient the reader.

6. **The last paragraph of the PR curve discussion packs two distinct ideas together.** Lines 367–369 tie back to the earlier 0.95/0.05 example (good closure), then pivot to a broader claim:

   > "The base rate doesn't just hurt precision at one operating point — it reshapes the entire trade-off curve."

   This is a bigger, standalone insight that deserves its own moment.

   **Suggested fix:** Add a paragraph break before "The base rate doesn't just hurt precision..." so the broader claim lands separately from the example callback.



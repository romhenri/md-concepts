---
name: add-concept
description: Create a new concept note in this md-concepts vault, following the repo's Definition/Key Idea/Details/Significance/Limitations/Related Concepts structure. Checks whether the concept (or a close synonym) already exists, scans every existing note for genuine relationships before writing, and adds reciprocal Related Concepts backlinks to the files it links to. Use when the user asks to add, create, or write a new concept, or names a specific topic to file in this vault (e.g. "/add-concept entropy", "add a concept for confirmation bias").
argument-hint: "[concept name] [category]"
model: opus
---

# Add Concept

Create one new concept note for this vault. The hard part isn't the prose -
it's making sure the concept doesn't already exist under another name, and
that it gets wired into the graph of `[[wikilinks]]` correctly in both
directions.

Read [references/concept-template.md](references/concept-template.md) before
writing anything - it has the exact section structure, the non-negotiable
formatting rules (wikilink alias format, no em dash), and the slug rules.

## Workflow

### Phase 1: Resolve the concept

1. From the argument (or the user's request), derive:
   - **Display Name** - Title Case, e.g. "Confirmation Bias"
   - **Slug** - kebab-case, e.g. `confirmation-bias`
2. Pick the **category directory**. List the existing ones:
   ```
   ls /Users/romulo.duarte/ODev/md-concepts | grep -v -E '^(CLAUDE.md|README.md|.git|.obsidian|.scripts)$'
   ```
   Currently: `biology`, `computer-sc`, `economy`, `math`, `philosophy`,
   `social-science`. If the concept doesn't fit any existing category,
   propose a new directory name and confirm with the user before creating it -
   don't invent a category silently.

### Phase 2: Check for collisions

Don't just check the exact filename - concepts get renamed or approached from
a different angle.

1. Exact match:
   ```
   find /Users/romulo.duarte/ODev/md-concepts -iname "<slug>.md"
   ```
2. Fuzzy/synonym match - grep all H1 headings and filenames for close terms:
   ```
   grep -r "^# " /Users/romulo.duarte/ODev/md-concepts --include="*.md" -l
   ```
   Read the headings. If a synonym or near-duplicate already exists (e.g. user
   asks for "natural selection" but `natural-selection.md` exists), tell the
   user and ask whether they want to extend that file instead, or confirm this
   is genuinely a distinct concept.
3. Dangling references - the new slug may already be referenced by other
   notes that anticipated it (this repo's convention explicitly allows linking
   to concepts that don't exist yet). Find them:
   ```
   .scripts/find_concept_refs.sh <slug>
   ```
   Any hits here are **free reciprocal backlinks** - the linking file already
   states the relationship in its own words; reuse that framing when you
   write the new note's own Related Concepts section back to it.

If no collision, proceed. If one is found, stop and ask before continuing.

### Phase 3: Scan for genuine relationships

**Never force a link.** A concept goes in Related Concepts because it is
truly, substantively connected to the new concept - not because a file for it
happens to exist in this vault. An empty or short Related Concepts section is
fine and better than a padded one.

1. **Think about the concept on its own terms first**, independent of what's
   in the vault. What is it actually built on, a special case of, in tension
   with, or a mechanism for? Write down these strongly-related concepts from
   domain knowledge alone - some will have no file yet, and that's expected
   (link them anyway, per the template rules).
2. **Only then** check whether any of those strongly-related concepts, or
   anything close to them, already exist in this vault:
   ```
   find /Users/romulo.duarte/ODev/md-concepts -name "*.md" \
     -not -path "*/.obsidian/*" -not -path "*/.scripts/*" \
     -not -name "README.md" -not -name "CLAUDE.md"
   ```
   Read the ones that plausibly match a concept from step 1. Don't go
   trawling the whole vault for anything loosely adjacent - the existing file
   has to earn the link on its own merits, not just be nearby.
3. If an existing file matches, decide the *direction and nature* of the
   relationship (supplies X to, is a special case of, contrasts with, provides
   the mechanism for, etc.) - not just "related." If a plausible existing file
   turns out to be tangential on closer read, drop it. It's fine for a strongly
   related concept from step 1 to stay unfiled rather than getting awkwardly
   pinned to the nearest existing file just because one exists.
4. Present the resulting list to the user before writing, one line each:
   `<slug or "(unfiled)"> - <relationship in one clause>`. Get a quick
   confirmation or let the user prune it. Skip this check-in only if the user
   has already named the specific related concepts themselves.

### Phase 4: Write the new note

Follow [references/concept-template.md](references/concept-template.md)
exactly. In particular:
- Every wikilink is `[[kebab-slug|Display Text]]`, even for concepts that
  don't have a file yet.
- Related Concepts bullets state the relationship, not just its existence.
- No em dash character anywhere - use ` - ` or split sentences.
- Omit `## Limitations` if the concept genuinely has none worth noting.

Write the file at `<category>/<slug>.md`.

### Phase 5: Add reciprocal backlinks

For every existing file the new note links to in its Related Concepts
section (from Phase 3, plus any dangling references found in Phase 2), add a
matching bullet to *that file's* own `## Related Concepts` section, pointing
back at the new concept with the relationship stated from its perspective (not
just a mirrored sentence - flip the framing to fit that file's voice).

Do this automatically, without asking, then report which files were touched.

### Phase 6: Report

Summarize:
- File created (path)
- Existing files updated with backlinks (paths)
- Suggested commit message, Conventional Commits format:
  `feat(<category>): add <concept-name> concept`

Do not commit. Let the user run `/commit` or their own workflow.

## Example

User: `/add-concept "confirmation bias" psychology`

1. Slug `confirmation-bias`, Display Name "Confirmation Bias". No `psychology`
   category exists yet - propose creating one, or file under
   `social-science` if the user prefers reusing an existing bucket. Confirm.
2. No exact match. Grep headings - no synonym found.
   `find_concept_refs.sh confirmation-bias` - no dangling refs.
3. Scan existing notes: `syllogism.md` (logical fallacies are adjacent),
   `anthropology.md` (methodology bias) - present candidates, user confirms
   `syllogism` (contrasts with valid deductive reasoning) is worth linking,
   drops anthropology as too tangential.
4. Write `social-science/confirmation-bias.md` (or new `psychology/` dir)
   following the template, linking `[[logical-fallacy|Logical Fallacy]]`
   (new, unfiled) and `[[syllogism|Syllogism]]`.
5. Add a bullet to `philosophy/syllogism.md`'s Related Concepts pointing back
   at `[[confirmation-bias|Confirmation Bias]]`.
6. Report the new file, the modified file, and suggest
   `feat(social-science): add confirmation bias concept`.

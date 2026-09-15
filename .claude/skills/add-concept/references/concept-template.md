# Concept File Template

Copy this structure exactly. Section order matters and is consistent across all
18 existing notes in this repo.

```markdown
# <Display Name>

## Definition
<One or two sentences. Precise, textbook-style. No hedging.>

## Key Idea
<The single most important insight, or a short attribution ("Proposed by X",
"Popularized by Y in <decade>") if the concept has a clear originator.>

## Details

### <Subsection Name>
<Bullet list or short prose. Common subsection names seen in this repo:
Requirements, Types, Structure, Methods, Origin, Example, Subfields.>

### <Another Subsection, if useful>
- ...

## Significance
- <Why the concept matters, what it explains, or what it's applied to.>
- <May include a bare-noun forward reference to a field, e.g. "used in
  cryptography" - this does not need a wikilink unless a concept file for
  it exists or is worth adding to Related Concepts.>

## Limitations           <!-- omit this whole section if the concept has none -->

### Criticisms
- <Known weaknesses, oversimplifications, or open debates.>

## Related Concepts
- [[kebab-slug|Display Text]] <relationship in one clause - how it connects>.
- [[kebab-slug|Display Text]] <relationship in one clause>.
- [[kebab-slug|Display Text]] <relationship in one clause>.
```

## Rules (non-negotiable)

- **Wikilink format**: always `[[kebab-slug|Display Text]]`. Never a bare
  `[[Display Text]]`. This holds even when the target file does not exist yet.
- **No em dash (—)** anywhere in the file. Use a hyphen with spaces (` - `) or
  split into two sentences. This is a project-wide rule (see project CLAUDE.md).
- **Related Concepts may point at concepts with no file yet.** Don't skip a
  genuinely related concept just because it isn't in the repo - link it anyway.
  Whoever writes that note later will find the backlink already waiting.
- **`## Limitations` is optional.** Include it only when the concept has
  real, documented criticisms or edge cases (most notes do; a few purely
  definitional ones, like bijective-function, omit it).
- Every `## Related Concepts` bullet states *how* the two concepts relate, not
  just that they do - "supplies the variation X operates on", not "is related
  to X".

## Slug and filename rules

- Filename: `<category>/<kebab-slug>.md`.
- `kebab-slug` = lowercase, hyphens, no articles unless part of the proper
  term (e.g. `natural-selection`, not `the-natural-selection`).
- Display Text in wikilinks is Title Case (e.g. `Natural Selection`), matching
  the file's own `# H1` heading.

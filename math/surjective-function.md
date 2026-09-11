# Surjective Function

## Definition
A surjective function (or onto function) is a function in which every element of the codomain is the image of at least one element in the domain - the function's range covers the entire codomain.

## Key Idea
Surjectivity means nothing in the codomain is "left out": for a function \(f: A \to B\), for every \(y \in B\), there exists at least one \(x \in A\) such that \(f(x) = y\).

## Details

### How to Verify
- **Algebraically** - given an arbitrary element \(y\) in the codomain, show that a corresponding \(x\) in the domain exists such that \(f(x) = y\) (often by solving for \(x\)).
- Unlike injectivity, surjectivity depends on the choice of codomain - the same formula can be surjective onto one codomain but not another.

### Example
- \(f(x) = x^3\) over the real numbers is surjective: every real number has a real cube root.
- \(f(x) = x^2\) mapping reals to reals is **not** surjective: negative numbers are never produced as outputs.
- \(f(x) = x^2\) mapping reals to non-negative reals **is** surjective, since every non-negative number has a real square root.

## Significance
- A necessary condition (along with injectivity) for a function to be [[bijective-function|bijective]] and thus invertible.
- Used to show that one set is "at least as large" as another - a surjection from A to B implies B is no larger than A.
- Important in algebra and analysis for characterizing onto mappings between structures (e.g., onto homomorphisms).

## Related Concepts
- [[bijective-function|Bijective Function]] requires a function to be both injective and surjective.
- [[injective-function|Injective Function]] is the complementary property; a function can be surjective without being injective, and vice versa.

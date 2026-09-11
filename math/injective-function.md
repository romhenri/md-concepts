# Injective Function

## Definition
An injective function (or one-to-one function) is a function in which distinct elements of the domain always map to distinct elements of the codomain - no two different inputs produce the same output.

## Key Idea
Injectivity means the function never "collapses" two different inputs onto the same output. Formally, for a function \(f: A \to B\), if \(f(x_1) = f(x_2)\), then \(x_1 = x_2\).

## Details

### How to Verify
- **Algebraically** - assume \(f(x_1) = f(x_2)\) and show this forces \(x_1 = x_2\).
- **Graphically (real-valued functions)** - use the horizontal line test: if any horizontal line intersects the graph more than once, the function is not injective.

### Example
- \(f(x) = 2x\) is injective: if \(2x_1 = 2x_2\), then \(x_1 = x_2\).
- \(f(x) = x^2\) over all real numbers is **not** injective: \(f(2) = f(-2) = 4\), so two distinct inputs share an output.

## Significance
- A necessary condition (along with surjectivity) for a function to be [[bijective-function|bijective]] and thus invertible.
- Used to compare the sizes of sets - an injection from set A to set B implies A is no larger than B.
- Common in cryptography and hashing contexts, where avoiding collisions (non-injective behavior) is often desirable.

## Related Concepts
- [[bijective-function|Bijective Function]] requires a function to be both injective and surjective.
- [[surjective-function|Surjective Function]] is the complementary property; a function can be injective without being surjective, and vice versa.

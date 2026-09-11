# Bijective Function

## Definition
A bijective function (or bijection) is a function that is both injective (one-to-one) and surjective (onto), meaning every element of the domain maps to a unique element of the codomain, and every element of the codomain is mapped to by exactly one element of the domain.

## Key Idea
A bijection establishes a perfect pairing between two sets: each input has exactly one output, and each output has exactly one input. This makes the function invertible - a bijection always has a well-defined inverse function.

## Details

### Requirements
- **Injective (one-to-one)** - no two distinct elements in the domain map to the same element in the codomain.
- **Surjective (onto)** - every element in the codomain is the image of at least one element in the domain.
- A function is bijective only if it satisfies both conditions simultaneously.

### Example
- \(f(x) = x + 1\) over the real numbers is bijective: every input maps to a distinct output (injective), and every real number is reachable as an output (surjective).
- \(f(x) = x^2\) over all real numbers is **not** bijective: it fails injectivity (e.g., \(f(2) = f(-2)\)) and fails surjectivity over the reals (negative numbers are never outputs).

## Significance
- Guarantees the existence of an inverse function \(f^{-1}\).
- Used to prove that two sets have the same cardinality (size), including for infinite sets.
- Fundamental in areas such as group theory, cryptography, and combinatorics, where bijections establish equivalences between structures.

## Related Concepts
- [[injective-function|Injective Function]] is one of the two required properties for a function to be bijective.
- [[surjective-function|Surjective Function]] is the other required property for a function to be bijective.

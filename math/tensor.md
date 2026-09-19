# Tensor

## Definition
A tensor is a multi-dimensional array of scalars, generalizing scalars, vectors, and matrices to any number of indices (its "rank" or "order").

## Key Idea
The scalar-vector-matrix progression is really a hierarchy indexed by rank: a scalar has 0 indices, a vector has 1, a matrix has 2, and a tensor extends this to 3 or more, without changing the underlying idea of an array of numbers combined with rules for how it transforms.

## Details

### Rank Hierarchy
- **Rank 0** - a [[scalar|Scalar]], a single number.
- **Rank 1** - a [[vector|Vector]], an ordered list of numbers.
- **Rank 2** - a [[matrix|Matrix]], a 2D array of numbers.
- **Rank 3+** - a general tensor, e.g. a 3D array (a "cube" of numbers) or higher.

### Representation
- In physics, a tensor is defined not just by its array of components but by how those components transform under a change of coordinates.
- In computing, a tensor is typically just a multi-dimensional array, without the coordinate-transformation requirement from physics.

## Significance
- Provides the unifying data structure across [[scalar|Scalar]], [[vector|Vector]], and [[matrix|Matrix]], letting the same operations (addition, scaling, contraction) generalize across all of them.
- The core data structure of modern [[machine-learning|Machine Learning]] frameworks, which represent inputs, weights, and activations as multi-dimensional tensors.
- Used in physics (e.g., the stress-energy tensor in general relativity) to describe quantities that depend on multiple directions at once.

## Related Concepts
- [[scalar|Scalar]] is the rank-0 tensor, the simplest case in the hierarchy.
- [[vector|Vector]] is the rank-1 tensor, one step above a scalar.
- [[matrix|Matrix]] is the rank-2 tensor, one step above a vector, before tensors generalize further.

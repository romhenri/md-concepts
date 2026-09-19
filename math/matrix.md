# Matrix

## Definition
A matrix is a rectangular array of scalars arranged in rows and columns, used to represent linear transformations, systems of linear equations, and collections of vectors.

## Key Idea
A matrix acts as a function between vector spaces: multiplying a matrix by a vector produces another vector, transformed according to the matrix's entries. This makes matrices the standard way to represent and compose linear transformations.

## Details

### Structure
- Described by its dimensions, rows by columns (e.g., a 3x2 matrix has 3 rows and 2 columns).
- A square matrix (equal rows and columns) can represent a transformation from a space to itself, and may be invertible.

### Core Operations
- **Matrix Multiplication** - composes two linear transformations into one; not commutative in general.
- **Transpose** - flips a matrix over its diagonal, swapping rows and columns.
- **Determinant** - a scalar computed from a square matrix that indicates whether it is invertible and how it scales volume.
- **Inverse** - a matrix that undoes another matrix's transformation, existing only when the determinant is nonzero.

## Significance
- Arranges [[vector|Vector]]s into rows or columns, providing the standard structure for representing and manipulating them together.
- An invertible square matrix corresponds exactly to a [[bijective-function|Bijective Function]] between vector spaces, since invertibility requires the transformation to be both injective and surjective.
- Central to solving systems of linear equations, computer graphics transformations, and the weight structures underlying [[machine-learning|Machine Learning]] models.

## Related Concepts
- [[vector|Vector]] is what a matrix arranges into rows and columns, and what a matrix transforms under multiplication.
- [[bijective-function|Bijective Function]] describes exactly the linear maps that invertible square matrices represent.
- [[tensor|Tensor]] generalizes a matrix by allowing more than two indices, treating a matrix as a rank-2 tensor.

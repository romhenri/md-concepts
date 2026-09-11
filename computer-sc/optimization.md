# Optimization

## Definition
Optimization is the process of finding the best solution to a problem from a set of possible options, typically by minimizing or maximizing an objective function subject to given constraints.

## Key Idea
Most computational and mathematical problems can be framed as searching for the input values that yield the best possible output - the "best" being defined by a cost, error, or utility function.

## Details

### Approaches
- **Exact Methods** - linear programming, dynamic programming, branch-and-bound; guarantee optimal solutions for well-structured problems.
- **Heuristic/Metaheuristic Methods** - simulated annealing, genetic algorithms, swarm intelligence; used when exact methods are impractical.
- **Gradient-based Methods** - gradient descent and its variants, widely used to train machine learning models.
- **Convex Optimization** - a well-studied class of problems where any local optimum is guaranteed to be global.

### Problem Types
- **Constrained vs. Unconstrained** - whether the search is limited by explicit conditions.
- **Continuous vs. Discrete/Combinatorial** - whether the variables take continuous values or are selected from discrete sets.
- **Single-objective vs. Multi-objective** - optimizing one criterion versus balancing several, often competing, goals.

## Significance
- Central to [[machine-learning|Machine Learning]], where training a model is fundamentally an optimization problem.
- Applied across [[programming|Programming]] disciplines for performance tuning, resource allocation, and algorithm design.
- Draws on nature-inspired strategies from [[bio-inspired-computing|Bio-inspired Computing]] for hard, non-convex problems.

## Limitations

### Criticisms
- Exact optimality is often computationally infeasible for large or NP-hard problems.
- Heuristic methods trade guaranteed optimality for tractability, risking convergence to local optima.
- Poorly defined objective functions can lead to solutions that are technically optimal but practically undesirable.

## Related Concepts
- [[machine-learning|Machine Learning]] depends on optimization algorithms to fit model parameters to data.
- [[programming|Programming]] is the tool through which optimization algorithms are implemented and applied.
- [[bio-inspired-computing|Bio-inspired Computing]] offers metaheuristic optimization techniques inspired by natural processes.

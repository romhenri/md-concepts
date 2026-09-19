# Stochastic

## Definition
Stochastic describes a process or system whose future state involves inherent randomness, such that its evolution cannot be predicted exactly, only characterized by a probability distribution over possible outcomes. It stands in contrast to a deterministic process, where the same starting conditions always produce the same result.

## Key Idea
A stochastic process is formalized as a collection of random variables indexed by time (or another parameter), each drawn from a probability distribution rather than fixed by a rule. Repeated runs from identical initial conditions can produce different trajectories.

## Details

### Types of Stochastic Processes
- **Markov Chains** - the next state depends only on the current state, not the full history ("memorylessness").
- **Random Walks** - a sequence of steps, each randomly chosen, used to model diffusion, stock prices, and particle motion.
- **Brownian Motion** - the continuous-time limit of a random walk, foundational in physics and quantitative finance.
- **Poisson Processes** - model the random occurrence of discrete events over time (e.g., arrivals, failures).

### Stochastic vs. Deterministic
- A deterministic model produces one exact outcome from given inputs; a stochastic model produces a distribution of possible outcomes.
- Many real systems are modeled as stochastic not because they lack underlying causes, but because those causes are too numerous or unobservable to track individually.

## Significance
- Underpins [[optimization|Optimization]] methods such as stochastic gradient descent, which introduces randomness into the search to escape local optima and scale to large datasets.
- Provides the probabilistic outcomes that [[entropy|Entropy]] quantifies as uncertainty.
- Explains the [[mutation|Mutation]] process in biology, where replication errors occur as random events rather than on a fixed schedule.
- Used to model financial markets, queueing systems, weather, and population dynamics.

## Related Concepts
- [[optimization|Optimization]] relies on stochastic methods (e.g., stochastic gradient descent, simulated annealing) to search large or non-convex solution spaces efficiently.
- [[entropy|Entropy]] measures the uncertainty inherent in a stochastic process's distribution over outcomes.
- [[mutation|Mutation]] is a stochastic event, occurring randomly rather than deterministically during DNA replication.
- [[federated-learning|Federated Learning]] aggregates stochastic gradient updates computed locally on each client's own data before combining them centrally.

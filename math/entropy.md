# Entropy

## Definition
Entropy is a quantitative measure of uncertainty, disorder, or the number of possible microscopic configurations consistent with a system's observable state. It originated in thermodynamics and was later generalized into a formal measure of information.

## Key Idea
Introduced by Clausius in the 1850s to describe energy dissipation in thermodynamics, and reformulated statistically by Boltzmann as a count of microstates. Shannon later repurposed the same mathematical form in 1948 to measure the uncertainty of a probability distribution, founding information theory.

## Details

### Thermodynamic Entropy
- Measures the number of microscopic arrangements (microstates) compatible with a system's macroscopic state.
- Governed by the second law of thermodynamics: the total entropy of an isolated system never decreases over time.
- Gives physical processes a directionality, often called the "arrow of time."

### Information (Shannon) Entropy
- Quantifies the average uncertainty or "surprise" in the outcomes of a random variable, given its probability distribution.
- A distribution concentrated on one outcome has low entropy; a uniform distribution has maximum entropy.
- Cross-entropy, a related quantity, measures the divergence between a true distribution and a predicted one.

## Significance
- Provides the theoretical foundation for data compression and channel capacity in information theory.
- Used directly in [[machine-learning|Machine Learning]] as a splitting criterion in decision trees and as the basis of cross-entropy loss functions.
- Underlies the entropy/temperature framework that [[optimization|Optimization]] borrows for simulated annealing, allowing a search to escape local optima.
- Explains why heat flows from hot to cold and why many physical processes are irreversible in practice.

## Limitations

### Criticisms
- The thermodynamic and information-theoretic definitions share the same formula but describe different phenomena; conflating them without care leads to confused analogies (e.g., misapplying "entropy always increases" to non-isolated or non-physical systems).
- In machine learning, entropy-based splitting criteria can be computationally more expensive than simpler alternatives (e.g., Gini impurity) for marginal gains in accuracy.

## Related Concepts
- [[machine-learning|Machine Learning]] uses information entropy directly, both to choose splits in decision trees and to define cross-entropy loss for training classifiers.
- [[optimization|Optimization]] draws on the statistical-mechanics notion of entropy in simulated annealing, using a "temperature" schedule to control how much disorder the search tolerates while exploring the solution space.
- [[stochastic|Stochastic]] processes are what entropy quantifies: it measures the uncertainty inherent in their distribution over outcomes.

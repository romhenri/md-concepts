# Prisoner's Dilemma

## Definition
The Prisoner's Dilemma is a game-theoretic model in which two rational players, each acting in their own self-interest, choose an outcome that is worse for both than the outcome they could have reached by cooperating. Defection is the dominant strategy for each player individually, yet mutual defection is collectively inferior to mutual cooperation.

## Key Idea
Individual rationality and collective rationality can diverge. Formalized by Merrill Flood and Melvin Dresher at RAND in 1950, and given its narrative framing (two arrested accomplices interrogated separately) by Albert Tucker shortly after.

## Details

### Structure
Two players each choose independently to **cooperate** (stay silent) or **defect** (confess). Writing the payoffs as years of prison avoided, the four outcomes rank as follows for a given player:

- **Defect while the other cooperates** - best individual outcome (temptation).
- **Both cooperate** - second best (reward).
- **Both defect** - third (punishment).
- **Cooperate while the other defects** - worst (sucker's payoff).

Because defecting beats cooperating regardless of what the opponent does, defection strictly dominates. Both players reason this way, so both defect - landing on the punishment payoff when the reward payoff was available to both.

### Requirements
- **Two or more players** choosing simultaneously, or without knowledge of the other's choice.
- **Payoff ordering** of temptation > reward > punishment > sucker.
- **No binding agreement** - players cannot enforce a promise to cooperate.

### Iterated Prisoner's Dilemma
When the game repeats and players remember past rounds, cooperation can become rational. Reputation and the threat of future retaliation change the calculus:

- **Tit-for-tat** - cooperate first, then mirror the opponent's last move. Won Robert Axelrod's 1980 computer tournaments.
- **Shadow of the future** - cooperation is sustainable when the probability of another round is high enough that future losses outweigh the one-time temptation payoff.
- **Finite known horizon** - if both players know the last round, backward induction unravels cooperation all the way back to the first move.

### Example
Two competing firms each decide whether to hold prices high (cooperate) or undercut the rival (defect). Undercutting wins market share if the rival holds, so both undercut, and both end with thinner margins than if they had each held prices high. The same structure appears in arms races, doping in sport, and overfishing of a shared stock.

## Significance
- Explains why cooperation fails even among parties who all prefer the cooperative outcome, without appealing to irrationality or malice.
- Provides the canonical argument for institutions, contracts, regulation, and enforcement - external mechanisms that make cooperation binding and thereby change the payoff structure.
- Underpins analysis of cartels, price wars, public goods provision, free-riding, and climate negotiation.
- Serves as a standard model for the evolution of cooperation in biology, where repeated interaction and kin relatedness can make cooperative strategies fitness-enhancing.
- Widely used as a benchmark environment in multi-agent systems and reinforcement learning research.

## Limitations

### Criticisms
- The one-shot game assumes no history, no reputation, and no communication - conditions rarely met in real economic or social interaction.
- Payoffs are treated as fixed, known, and comparable, whereas real actors face uncertainty about both their own and their opponent's valuations.
- Treats preferences as purely self-interested. Experimental subjects cooperate far more often than the model predicts, suggesting fairness, spite, and social norms enter the payoff function itself.
- The label is overapplied. Many situations called prisoner's dilemmas do not actually satisfy the payoff ordering, and are better described as coordination games or games of chicken.

## Related Concepts
- [[game-theory|Game Theory]] is the broader discipline that supplies the formal apparatus - players, strategies, payoff matrices - in which the Prisoner's Dilemma is stated.
- [[nash-equilibrium|Nash Equilibrium]] identifies mutual defection as the game's single stable outcome, which is precisely what makes the dilemma inescapable for rational players.
- [[dominant-strategy|Dominant Strategy]] is the mechanism driving the result, since defection outperforms cooperation against every possible opponent move.
- [[tragedy-of-the-commons|Tragedy of the Commons]] generalizes the dilemma to many players sharing a depletable resource, where each individual's rational extraction degrades the common stock.
- [[tit-for-tat|Tit-for-tat]] is the reciprocal strategy that sustains cooperation once the game is repeated, showing the dilemma is a property of the one-shot form rather than of self-interest as such.
- [[externality|Externality]] describes the same divergence in market terms, where a cost imposed on others goes unpriced in the actor's own decision.
- [[optimization|Optimization]] meets a hard counterexample here, since each player optimizing individually produces a jointly worse result than the cooperative solution that no individual optimization step will reach.
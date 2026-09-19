# Federated Learning

## Definition
Federated learning is a machine learning training approach in which a shared model is trained across many decentralized devices or servers holding local data, without that raw data ever leaving its original location.

## Key Idea
Introduced by Google researchers in 2016, federated learning inverts the usual data pipeline: instead of moving data to a central server for training, it moves the model to the data, aggregating only the resulting updates centrally.

## Details

### Process
- **Distribution** - a central server sends the current model to a set of participating devices or clients.
- **Local Training** - each client trains the model on its own local data for a few steps.
- **Aggregation** - clients send back only their model updates (not their data), which the server combines, commonly via an averaging algorithm such as FedAvg.
- **Iteration** - the improved global model is redistributed, and the cycle repeats over many rounds.

### Motivations
- **Privacy** - sensitive data (e.g., on a phone or in a hospital) never has to be centralized or shared.
- **Bandwidth** - avoids transferring large raw datasets, sending only compact model updates instead.
- **Regulation** - helps meet data residency and privacy requirements (e.g., GDPR, HIPAA) that restrict moving certain data.

## Significance
- A distributed training paradigm within [[machine-learning|Machine Learning]], adapting standard training to settings where centralizing data is impossible or undesirable.
- Each local training round relies on [[stochastic|Stochastic]] gradient updates computed on a client's own data before being aggregated centrally.
- Depends on [[optimization|Optimization]] to design aggregation schemes that converge despite clients having different amounts and distributions of data.
- Used in applications like mobile keyboard prediction, healthcare research, and other privacy-sensitive domains.

## Limitations

### Criticisms
- Convergence is harder to guarantee than centralized training, since client data is often non-identically distributed (non-IID) across participants.
- Communication between server and clients over many rounds can itself become a bottleneck, especially with unreliable network connections.
- Aggregated updates can still leak information about individual clients' data unless combined with additional privacy techniques.

## Related Concepts
- [[machine-learning|Machine Learning]] provides the training objective and model architectures that federated learning adapts to a decentralized setting.
- [[stochastic|Stochastic]] gradient updates computed locally on each client's data are the basic unit federated learning aggregates across rounds.
- [[optimization|Optimization]] supplies the aggregation algorithms (e.g., FedAvg) that federated learning uses to converge despite non-identical client data distributions.

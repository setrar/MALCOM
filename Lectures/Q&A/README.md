**MSE vs. MAE (with Formulas):**

- **MSE (Mean Squared Error)**
  - **Formula**: $\text{MSE} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2$
  - **Sensitivity to Outliers**: Higher, due to squaring the errors.
  - **Error Interpretation**: Output in squared units, making direct interpretation harder.

- **MAE (Mean Absolute Error)**
  - **Formula**: $\text{MAE} = \frac{1}{n} \sum_{i=1}^{n} |y_i - \hat{y}_i|$
  - **Sensitivity to Outliers**: Lower, treats all errors linearly.
  - **Error Interpretation**: Output in the same units as the data, easier to interpret.


## probabilistic graphical model 

A graphical model is a probabilistic model for which a graph expresses the conditional dependence structure between random variables. They are powerful tools in statistics and machine learning for representing and reasoning about the probabilistic relationships among a large number of variables. By combining graph theory and probability theory, graphical models provide a way to visualize complex relationships in a structured form. There are two main types of graphical models:

### 1. **Bayesian Networks (Directed Graphical Models)**
- **Structure**: In Bayesian networks, the relationships between variables are represented by a directed acyclic graph (DAG). Each node represents a random variable, and each directed edge signifies a conditional dependency between two variables.
- **Usage**: They are used to model causal relationships and can be utilized for prediction, anomaly detection, and decision making under uncertainty. Bayesian networks are particularly useful in areas like genetics, where they can represent the probabilistic relationships between genes and traits, or in systems diagnostics, where they model the dependencies between system components.

### 2. **Markov Networks (Undirected Graphical Models)**
- **Structure**: Markov networks, or Markov Random Fields (MRFs), use an undirected graph. Here, nodes also represent random variables, but the undirected edges indicate a mutual dependency between the connected variables, without implying a direction of influence.
- **Usage**: They are often used for modeling the distribution over a set of variables that have a known interaction structure, common in spatial data analysis, image processing, and network traffic modeling.

### Key Concepts and Applications:
- **Conditional Independence**: Graphical models exploit conditional independence properties to factorize joint probability distributions into simpler, local factors. This significantly reduces the complexity of probability computations.
- **Inference**: A core use of graphical models is inference, where the goal is to compute the probability distribution of a subset of variables, given observations of other variables. Efficient algorithms exist for performing inference on graphical models, such as belief propagation and variational methods.
- **Learning**: Graphical models can be learned from data, either by learning the structure of the graph (which relationships exist) or the parameters of the model (the strength of these relationships), or both. This learning process is crucial for tasks like model fitting and pattern recognition.

### Advantages:
- **Interpretability**: The graphical representation makes it easier to understand and communicate the modeled relationships.
- **Flexibility**: Graphical models can represent a wide range of dependency structures and can incorporate both observed and hidden variables.
- **Efficiency**: By exploiting conditional independence, graphical models can perform calculations more efficiently than would be possible in a fully connected (non-sparse) model.

### Applications:
Graphical models have found applications across a broad spectrum of fields, including bioinformatics, speech recognition, computer vision, natural language processing, and social networks analysis. They offer a unified framework for dealing with uncertain information and making decisions based on complex, interconnected data.

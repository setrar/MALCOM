# Projects



# References

 - [ ] [Ep 30. The Sionna Library for Link-Level Simulations (With Jakob Hoydis) [Wireless Future Podcast]](https://www.youtube.com/watch?v=NcQL9vY3ENA)
 - [ ] [Jakob Hoydis - Recent Progress in End-to-End Learning for the Physical Layer](https://www.youtube.com/watch?v=EPLJzsxReH4)

<img src=images/Jacob-Hoydis-presentation.png width='75%' height='75%' > </img>



The goal is to minimize the probability of making an error =>  Goal: Minimise $Pr( \hat{S} \neq S)$

$$
\begin{gather}
\bullet \quad s \in \mathcal{M} = \\{ 1, ..., M \\}, k = log_2 M \\
\bullet \quad x \in \mathbb{C}^n \quad with \quad E[||x||^2] \leq n \qquad  \\
\bullet \quad y \in \mathbb{C}^n \quad \sim p(y|x) \qquad \qquad \qquad  \\
\bullet \quad \hat{s}  \in \mathcal{M} \qquad \qquad \qquad \qquad \qquad \\
\bullet \quad R = \frac{k}{n} \quad \text{ Rate = bits/channel use}
\end{gather}
$$




$x \in \mathbb{C}^n \quad with \quad E[||x||^2] \leq n$

This expression describes a mathematical condition involving a vector $x$ in the field of complex numbers:

- $x \in \mathbb{C}^n$: This denotes that $x$ is a vector with $n$ components, each of which is a complex number. The $\mathbb{C}^n$ represents an $n$-dimensional complex vector space.

- $E[||x||^2] \leq n$: Here, $E$ is the expected value operator (mean), and $||x||^2$ represents the squared Euclidean norm (or squared magnitude) of the vector $x$. The condition states that the expected value of the squared norm of $x$ is less than or equal to $n$. 

This kind of condition might arise in signal processing or communications, where $x$ could represent a signal vector, and the condition imposes a constraint on the average power of the signal (since the squared norm is a measure of power in this context). The constraint essentially says that the average power of the vector $x$ is limited to $n$, which could be interpreted as the signal vector having an average power of at most 1 per dimension, assuming $n$ is the number of dimensions.

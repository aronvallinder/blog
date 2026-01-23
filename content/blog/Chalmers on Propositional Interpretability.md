---
title: "Chalmers on Propositional Interpretability"
date: 2026-01-23T14:40:43
---

In [a new paper](https://arxiv.org/abs/2501.15740), David Chalmers argues for the importance of "propositional interpretability" for AI —i.e. of understanding AI systems' mechanisms in terms of propositional attitudes. 

He sees propositional interpretability as a species of mechanistic interpretability, which "analyzes an AI system's internal mechanisms to help explain (for theorists) what the system is doing." Mechanistic interpretability can be broken down into *algorithmic* interpretability, which "aims to understand the underlying algorithms that an AI system is executing, in clear theoretical terms," and *representational* interpretability, which "aims to understand the internal representations that an AI system is using." Propositional interpretability is a kind of representational interpretability, along with conceptual interpretability (which aims to understand the concepts an AI system is using). 

Why is propositional interpretability important? 
>in AI safety, it is crucial to know an AI system’s goals (desires) and its models of the world (beliefs). To know these, we need to know not just the concepts or features that are active in the system; we need to know the system’s propositional attitudes. It is very different for an AI system to believe that a certain dangerous outcome (an earthquake or a war, say) has occurred, and for it to have that outcome as a goal. The same goes in AI ethics. It is one thing for an AI system to believe that members of a certain demographic group are often denied loans, and another thing for the system to have this as a goal.

He notes that there is a parallel with radical interpretation as imagined by David Lewis: 
> Lewis’s statement of the problem amounts to: given the physical facts about a system, solve for the system’s beliefs, desires, and meanings. For my purposes, the focus on beliefs and desires is especially important. Since these are propositional attitudes, Lewis’s project is a version of propositional interpretability.

and by Donald Davidson: 
>Davidson’s version of radical interpretation diﬀers in an important way. Davidson’s version in effect says: given the behavioral facts about a system, solve for its beliefs, its desires, and its meanings. Davidson’s interpreter is restricted to behavior and only behavior.

Chalmers suggests a "thought logging system" as a north star for propositional interpretability:
> a system that logs all (or as many as possible) of an AI system’s propositional attitudes over time. A thought logging system is a meta-system that takes a specification of the algorithmic facts about an AI system as input (perhaps along with relevant environmental facts) and produces a list of the system’s current and ongoing propositional attitudes as outputs.

He discusses some current approaches in mechanistic interpretability that could support propositional interpretability: causal tracing, probing with classifiers, sparse auto-encoders, and chain of thought methods. 

Together with a belief-desire/expected utility maximization theory of rationality, propositional interpretability could help make interactions among AI agents (and humans) more reliable and predictable. As such it could be a critical tool for steering the overall cultural evolutionary trajectory.

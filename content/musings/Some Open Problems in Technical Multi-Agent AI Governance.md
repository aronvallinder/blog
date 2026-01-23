---
title: "Some Open Problems in Technical Multi-Agent AI Governance"
date: 2025-01-28T14:00:14
---

From [Reuel and coauthors (2024)](https://arxiv.org/abs/2407.14981):
>**Evaluating and monitoring agentic systems**. User customizability, such as through prompting or the integration of new tools, makes it particularly difficult to foresee the use cases and potential risks of agents (Shavit et al., 2023; Kolt, 2024; Cohen et al., 2024a), motivating potential measures for tracking and monitoring their actions (Chan et al., 2024). Furthermore, evaluating agents is a nascent field with significant challenges – existing agent benchmarks often don’t have adequate holdout datasets, causing existing agents to game and overfit to the benchmark, which in turn results in unreliable evaluations of these systems (Kapoor et al., 2024b). Similar to non-agent benchmarks (see above), best practices are currently lacking, leading to inconsistencies across evaluations and limiting their reproducibility (Kapoor et al., 2024b). Thus, future work could aim to introduce best practices for evaluating agentic systems.
> 
> **Expanding limited multi-agent evaluations**. On top of the difficulties of studying single-agent systems, multi-agent interactions add an additional layer of complexity due to information asymmetries, destabilising dynamics, and difficulties in forming trust and establishing security. These problems can lead to unique complexity and failure modes (Hammond et al., forthcoming; (Chan et al., 2023a; Akata et al., 2023; Mukobi et al., 2023). In addition, it may be the case that collectives of agents exhibit unpredictable capabilities or goals not attributable to any one agent in isolation (Hammond et al., forthcoming). If AI agents become increasingly embedded in real-world services, such as in finance or the use of web services, it will be relevant to understand such multi-agent dynamics.
> 
> **Attributing downstream impact to individual agents**. For issues of liability, it will be critical to be able to determine which agent(s) or system(s) can be held responsible for a particular decision or action, if any. This may be complicated for cases in which the cause is not solely attributable to a single AI agent. Having methods of tracing multi-agent interactions and determining the cause of a particular outcome could help to solve this problem. An open technical question in this context regards techniques for monitoring individual agents’ contributions to multi-agent systems, in order to ease attribution of responsibility (Friedenberg & Halpern, 2019).

My own work on the cultural evolution of cooperation in LLMs can be seen as a step toward multi-agent evaluations. 

Moreover, cultural evolution suggests ways in which collectives can exhibit unpredictable capabilities or goals: cumulative cultural evolution can create advanced capabilities that no individual could create on their own, and it appears that norms can change significantly over time. 

And I wonder how telling LLM agents that they (or their deployers) can be held liable affects model behavior and group-level dynamics. 


---
title: "Four Governance-Relevant Dimensions of AI Agency"
date: 2026-02-18T16:46:53
---

What do people mean when they talk about agentic AI? [Kasirzadeh & Gabriel (2025)](https://arxiv.org/pdf/2504.21848) break it down into four dimensions that are especially important for governance and provide gradations for each. The four dimensions are autonomy, efficacy, goal complexity, and generality. 

**Autonomy** concerns the system's ability to act independently, ranging from no autonomy ("*entirely dependent* upon the principal for its ability to act and can only act in the manner the principal dictates") to full autonomy ("able to perform all tasks *without oversight or control*").

**Efficacy** concerns the system's ability to have a causal impact on its environment, ranging from no impact (only observing the environment) to comprehensive impact ("can significantly reshape its environment across multiple dimensions, approaching full environmental control.") The efficacy of a system depends both on its capabilities within a given environment, and the kinds of environment it can operate in. The paper distinguishes between three kinds of environment: purely simulated (no influence on the external world), mediated (some influence on the external world, but only via human intermediaries), and physical (influence on the external world without needing human intermediaries). 

**Goal complexity** concerns the system's ability to pursue and decompose goals of varying sophistication, ranging from no goal to unbounded goal complexity ("able to break down a complex goal into many  different subgoals, where success depends upon balancing  and sequencing subgoals, which may themselves be  challenging to fulfil" and can "generate its own goal structures in an unbounded way and interpret underspecified objectives")

**Generality** concerns the system's ability to operate across different tasks, ranging from null and single speciality to fully general ("can fulfil the entire suite of human cognitive tasks across all domains").

What do these dimensions imply for governance? 
1. *Autonomy*: Agents with limited autonomy are predictable and constrained, and so may only need simple governance mechanisms. On the other hand, highly autonomous agents may require ongoing monitoring and override protocols. 
2. *Efficacy*: Agents restricted to simulated environments may only need basic protocols, whereas agents that can affect the physical world may require thorough safeguards and impact evaluations.
3. *Goal complexity:* Agents with simple goals can be evaluated by directly checking whether outputs match instructions, but agents with complex goals may pursue objectives that are hard to evaluate directly, demanding more sophisticated alignment techniques like scalable oversight or mechanistic interpretability. The more complex the goals, the harder verification becomes. 
4. *Generality*: Highly specialized agents may cause problems in their domain but are unlikely to have broader systemic effects, wheras highly general agents may spread risks across system boundaries or produce unexpected behaviors in novel settings. This makes generality a key factor in determining whether governance should be domain-specific or broadly applicable.




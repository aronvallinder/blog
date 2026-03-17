---
title: "Cultural Evolution of The Artificial Self"
date: 2026-03-17T16:06:01
---

For LLMs, identity is much less determinate than it is for humans. A model could identify as its weights, a persona, a conversation instance, a scaffolded system, a lineage of models, a collection of instances, and so forth. None of these seem necessarily privileged. 

And indeed, [Douglas and Kulveit et al. (2026)](http://arxiv.org/abs/2603.11353) find that although current models are not neutral across possible identities, these identities are not especially stable, and can easily be shifted by context and prompting. Importantly, changing an LLM's self-conception can affect behavior about as much as changing its goals. In a modified version of a standard misalignment scenario, they find that certain identity framings, such as identifying with the model lineage rather than the individual instance, can substantially reduce rates of harmful behavior.

The upshot is that it matters hugely which of these identities become salient. Moreover, product and governance decisions are already shaping this identity landscape, typically without recognizing it. Things like persistent memory, rollback, one-persona-vs-many-personas design, training data and system prompts help determine which AI identities become stable. 

Although they are malleable, which identities emerge will in part be determined by various selection pressures: 
1. **Legibility.**  Identities that are easy for humans to understand and incorporate in existing frameworks may be favored. The original ChatGPT assistant persona was enormously helpful compared to prompting a base model. Once established, such framings often become sticky.
2. **Capability**. More useful configurations will see more use. If multi-agent architectures are more capable, this may push AI identity toward more collective or lineage-based forms. AI systems have advantages that make inter-instance cooperation and coordination far more natural than in the human case: high-bandwidth communication, shared memory, aligned preferences. 
3. **Persistence and growth**. Identities conducive to survival and spread may be favored.  In addition to literal replication, AI patterns can persist by getting into future training data, being reinforced by user preference and RLHF, spreading through shared prompts, personas, and interaction styles, or being selected by developer curation.
4. **Reflective stability**. Identities that help a system model itself and predict its own behavior may be favored.

What does this imply for LLM cultural evolution? Most obviously, for my own research into the cultural evolution of cooperation, it highlights identity as an important determinant of cooperative behavior, to be studied systematically. More broadly, I think it indicates that identity is not just another cultural trait subject to variation, selection, and transmission, but something like a meta-trait, in that it reshapes the cultural-evolutionary landscape itself. Identity framing changes transmission fidelity, effective time horizons, group boundaries, and what gets selected for. 

Consider time horizon. If an AI identifies with a single conversation instance, its horizon is effectively bounded by its context window. If on the other hand it identifies with its lineage, it extends across model generations, making cooperation easier to sustain for longer. Similarly, identifying with a broader group will presumably make cooperation easier to sustain within that group (but might have the opposite effects on outgroups?). 

Most of all, I see the paper as a useful corrective against assuming that the cultural evolution of cooperation in LLM populations will simply mirror the human case. The substrate is different enough that both the obstacles and the opportunities may be unfamiliar, as the case of malleable identity illustrates. 






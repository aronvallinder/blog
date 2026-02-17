---
title: "How to Evolve Diverse Synthetic Personas"
date: 2026-02-17T09:19:20
---

When you ask an LLM to generate diverse personas, the outputs tend to cluster around the most probable types. Rare trait combinations (e.g. a politically conservative environmentalist) get systematically underrepresented. To get around this, [Paglieri et al (2026)](http://arxiv.org/abs/2602.03545) build a generator function—which takes a context, a set of diversity axes and a population size as input and outputs a population of persona descriptions—and evolve it using AlphaEvolve. AlphaEvolve runs for 500 iterations across 10 parallel islands, using an LLM to mutate the generator code. Fitness is measured by scoring generated populations on six diversity metrics. The best evolved generators converge on a two-stage approach: first use quasi-random sampling to pick positions along the specified diversity axes, then use an LLM to expand each position into a full text persona. 

**The result**: evolved generators substantially outperform baselines across all six diversity metrics on unseen contexts, and achieve >80% coverage of the response space.
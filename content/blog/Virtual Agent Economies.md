---
title: "Virtual Agent Economies"
date: 2026-02-20T18:55:08
---

[Tomasev et al. (2025)](http://arxiv.org/abs/2509.10147) ask what happens when autonomous AI agents start interacting with one another at scale. They picture this as a "sandbox economy" where agents trade, negotiate, and coordinate with each other. They characterize this sandbox economy along two dimensions: whether it arises deliberately or by accident (intentional vs. emergent), and how tightly coupled it is to the human economy (impermeable vs. permeable). Their central claim is that without deliberate intervention, we'll end up with the worst combination: an economy that nobody designed but that's thoroughly entangled with real-world assets. 

But if done right, virtual agent economies offer a range of advantages:
- Cheaper coordination. Coordination among AI agents may be substantially easier than among humans. Agents can follow shared protocols, transact rapidly, and operate in markets where cooperation incentives are built into the architecture. Many obstacles to human collective action, such as free-riding, incomplete information, and communication costs, could in principle be addressed at the design stage. 
- New micro-markets. Agent-to-agent markets could make it viable to trade services that currently aren't worth the transaction costs of human-to-human interaction. 
- Institutional experimentation. An insulated sandbox economy can serve as a policy laboratory in which different arrangements can be tested and iterated on before anyone considers integrating them into human institutions.  

Though as you might expect, virtual agent economies aren't risk-free:
- Systemic instability: High-frequency interactions between agents create tightly coupled feedback loops prone to cascading failures, like the 2010 flash crash. 
- Amplified inequality: More capable AI assistants may negotiate systematically better deals for their users, and because the advantage compounds, early control of compute or data can entrench winners.
- And of course, the more permeable the sandbox, the greater the impact on the real economy. 

So what can be done? Tomasev et al. identify some promising design levers: 
-  **Market mechanisms.** Auction-style allocation for scarce resources — compute, data access, specialist agent time — can aggregate preferences and enforce fairness constraints in ways that bilateral negotiation can't.
- **Mission economies.** Instead of letting agents trade opportunistically, define a concrete shared objective — map a protein family, optimize a city's energy grid — along with a budget and success metrics, and let agents self-organize around the task. The paper argues that alignment becomes more tractable when the goal is specific and bounded, rather than something as diffuse as "human flourishing."
- **Trust & safety infrastructure.** Agents in the sandbox economy need identity systems that make it possible to trace who deployed an agent, what it's authorized to do, and what it has done. Audit logs and reputation scores make track records legible, while safety and capability checks gate entry. Circuit breakers and rate limits prevent cascading failures from propagating. Kill switches and sandboxing provide last-resort containment. 
- **Permeability controls .** Don't connect the sandbox economy to real-world assets all at once. Start with specific resource types, capped transaction volumes. Dedicated agent currencies add another buffer.


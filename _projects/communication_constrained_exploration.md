---
layout: page
title: Communication-Constrained Multi-Robot Exploration
description: Adaptive communication windows help robot teams share maps without costly detours from exploration.
importance: 1
category: work
---

**Ben Rossano, Jaein Lim, Jonathan P. How**

arXiv preprint, 2026.

[arXiv:2609.12502](https://arxiv.org/abs/2609.12502) · [PDF](https://arxiv.org/pdf/2609.12502)

## Overview

Multi-robot teams can explore an unknown environment faster by spreading out, but they also need to share what they discover. When communication is intermittent, robots face a tradeoff: meeting too often takes time away from exploration, while meeting too rarely can lead them to cover the same ground twice.

This work introduces **MACE**, a decentralized exploration framework that makes communication decisions at scheduled windows. Each robot considers previously identified communication locations and plans a route through unexplored frontiers toward one of them. It estimates how much exploration it can complete along the way and whether the remaining detour is worthwhile. If no useful route is available, the robot keeps exploring and checks again at the next window.

In simulations across environments with different sizes and layouts, MACE reduced total exploration time by up to 23% compared with existing communication-constrained strategies. It communicated more often than purely opportunistic exploration while avoiding much of the travel required by fixed rendezvous schedules.

## Citation

```bibtex
@article{rossano2026communication,
  title   = {Communication-Constrained Multi-Robot Exploration With Adaptive Communication Windows},
  author  = {Rossano, Ben and Lim, Jaein and How, Jonathan P.},
  journal = {arXiv preprint arXiv:2609.12502},
  year    = {2026},
}
```

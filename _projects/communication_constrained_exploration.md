---
layout: page
title: Communication-Constrained Multi-Robot Exploration
description: Adaptive communication windows help robot teams share maps without costly detours from exploration.
img: assets/img/mace_communication_exploration_paper.png
importance: 1
category: work
---

**Ben Rossano, Jaein Lim, Jonathan P. How**

Accepted to the [Workshop and Competition on Intelligent Information Gathering for Single and Multi-Robot Systems](https://frostlab.byu.edu/IIG-workshop/) at IROS 2026.

[arXiv:2609.12502](https://arxiv.org/abs/2609.12502) · [PDF](https://arxiv.org/pdf/2609.12502)

{% include figure.liquid loading="eager" path="assets/img/mace_communication_exploration_paper.png" title="Communication-aware multi-robot exploration" alt="Robots exploring separate map regions, with frontier routes and points where they can reconnect" class="img-fluid rounded z-depth-1" %}

<div class="caption">
    The orange and red robots consider unexplored frontiers along routes toward communication points (purple), balancing new exploration against the travel needed to reconnect.
</div>

## Overview

Multi-robot teams can explore unknown environments faster by spreading out, but they also need to share what they discover. When communication is intermittent (e.g., environments like tunnels where robots must have line-of-sight), robots face a tradeoff: meeting too often takes time away from exploration, while meeting too rarely can lead them to revisit areas their teammates have already explored.

Existing methods either schedule mandatory rendezvous at fixed intervals or rely on chance encounters between robots. Our approach keeps the structure of scheduled communication windows without requiring robots to meet at every one. At each window, a robot estimates the cost of reaching a previously identified communication location, accounting for both the travel distance and the unexplored frontiers it can visit along the way. If the detour is worthwhile, the robot attempts to reconnect. Otherwise, it continues exploring and reassesses at the next window.

## Citation

Please cite the arXiv preprint; the workshop submissions are non-archival:

```bibtex
@article{rossano2026communication,
  title   = {Communication-Constrained Multi-Robot Exploration With Adaptive Communication Windows},
  author  = {Rossano, Ben and Lim, Jaein and How, Jonathan P.},
  journal = {arXiv preprint arXiv:2609.12502},
  year    = {2026},
  note    = {Accepted to the Workshop and Competition on Intelligent Information Gathering for Single and Multi-Robot Systems at IROS 2026},
}
```

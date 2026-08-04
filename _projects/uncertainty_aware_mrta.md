---
layout: page
title: Uncertainty-Aware Multi-Robot Task Allocation
description: An auction-based allocation framework for heterogeneous robot teams when task requirements are uncertain.
img: assets/img/mrta_fig.png
importance: 1
category: work
---

**Ben Rossano, Jaein Lim, Jonathan P. How**

Accepted to the IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), 2026.

[arXiv:2509.22469](https://arxiv.org/abs/2509.22469) · [PDF](https://arxiv.org/pdf/2509.22469)

{% include figure.liquid loading="eager" path="assets/img/mrta_fig.png" title="Uncertainty-aware multi-robot task allocation" class="img-fluid rounded z-depth-1" %}

<div class="caption">
    A disaster relief scenario where task requirements are uncertain: the search task may or may not also need debris clearing. Rather than committing a debris robot to it outright or waiting for the requirement to be confirmed, the allocation keeps the debris robot working nearby, so it can provide quick assistance if it turns out to be needed.
</div>

## Overview

When a heterogeneous robot team is sent into an unfamiliar environment, it is often challenging to know with certainty which capabilities each task will actually demand. For example, a collapsed building may or may not need a robot that can lift debris before a search can be conducted.

The two standard responses are both unsatisfying. Redundant assignment—sending every capability that a task might need—wastes robots on tasks that turn out not to need them. Purely reactive strategies wait until the requirement is confirmed, then pay a large travel delay while a specialized robot crosses the map, which can blow through task deadlines.

This work takes a middle path: allocate tasks so that robots with potentially-needed capabilities end up working *near* uncertain tasks. They stay productive on other work, but they are close by if their capability turns out to be required.

## Citation

Please cite the arXiv version until the IROS proceedings are published:

```bibtex
@article{rossano2026uncertainty,
  title   = {Uncertainty-Aware Multi-Robot Task Allocation With Strongly Coupled Inter-Robot Rewards},
  author  = {Rossano, Ben and Lim, Jaein and How, Jonathan P.},
  journal = {arXiv preprint arXiv:2509.22469},
  year    = {2026},
}
```

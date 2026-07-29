---
layout: page
title: Uncertainty-Aware Multi-Robot Task Allocation
description: Auction-based allocation for heterogeneous robot teams when task requirements are uncertain. Accepted to IROS 2026.
img: assets/img/mrta_placeholder.png
importance: 1
category: work
---

**Ben Rossano, Jaein Lim, Jonathan P. How**

Accepted to the IEEE/RSJ International Conference on Intelligent Robots and Systems (**IROS**), 2026.

[arXiv:2509.22469](https://arxiv.org/abs/2509.22469) · [PDF](https://arxiv.org/pdf/2509.22469)

{% include figure.liquid loading="eager" path="assets/img/mrta_placeholder.png" title="Uncertainty-aware multi-robot task allocation" class="img-fluid rounded z-depth-1" %}

<div class="caption">
    Placeholder figure — to be replaced.
</div>

## Overview

When a heterogeneous robot team is sent into an unfamiliar environment, you often don't know in advance which capabilities each task will actually demand. A collapsed building may or may not need a robot that can lift debris; a flooded corridor may or may not need one that can operate submerged.

The two standard responses are both unsatisfying. **Redundant assignment** — sending every capability that a task might need — wastes robots on tasks that turn out not to need them. **Purely reactive** strategies wait until the requirement is confirmed, then pay a large travel delay while a specialized robot crosses the map, which can blow through task deadlines.

This work takes a middle path: allocate tasks so that robots with potentially-needed capabilities end up working *near* uncertain tasks. They stay productive on other work, but they are close by if their capability turns out to be required.

## Approach

- An **auction-based task allocation algorithm** that explicitly models task requirement uncertainty.
- A novel **strongly coupled** reward formulation, in which a robot's reward depends on the assignments of other robots. This is what positions potentially-required capabilities near uncertain tasks, rather than treating each robot's bid independently.
- A framework for **approximating uncertainty from unmodeled changes** in task requirements, which exploits the natural delay between a robot encountering an unexpected environmental condition and confirming whether extra capabilities are actually needed to finish the task.

## Results

Evaluated on simulated disaster relief missions with task deadline constraints:

- Up to a **15% increase in expected mission value** over redundancy-based methods.
- Up to an **18% increase in expected mission value** over reactive methods that do not exploit the confirmation delay, when using the unmodeled-uncertainty framework.

## Abstract

> Allocating tasks to heterogeneous robot teams in environments with uncertain task requirements is a fundamentally challenging problem. Redundantly assigning multiple robots to such tasks is overly conservative, while purely reactive strategies risk costly delays in task completion when the uncertain capabilities become necessary. This paper introduces an auction-based task allocation algorithm that explicitly models task requirement uncertainty, leveraging a novel strongly coupled formulation to allocate tasks such that robots with potentially required capabilities are naturally positioned near uncertain tasks. This approach enables robots to remain productive on nearby tasks while simultaneously mitigating large delays in completion time when their capabilities are required. Through a set of simulated disaster relief missions with task deadline constraints, we demonstrate that the proposed approach yields up to a 15% increase in expected mission value compared to redundancy-based methods. Furthermore, we propose a novel framework to approximate uncertainty arising from unmodeled changes in task requirements by leveraging the natural delay between encountering unexpected environmental conditions and confirming whether additional capabilities are required to complete a task. We show that our approach achieves up to an 18% increase in expected mission value using this framework compared to reactive methods that do not leverage this delay.

## Citation

Please cite the arXiv version until the IROS proceedings are published:

```bibtex
@article{rossano2025uncertainty,
  title   = {Uncertainty-Aware Multi-Robot Task Allocation With Strongly Coupled Inter-Robot Rewards},
  author  = {Rossano, Ben and Lim, Jaein and How, Jonathan P.},
  journal = {arXiv preprint arXiv:2509.22469},
  year    = {2025},
  note    = {Accepted to IROS 2026},
}
```

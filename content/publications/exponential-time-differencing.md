---
title: "Exponential time-differencing with embedded Runge–Kutta adaptive step control"
date: 2015-01-01
draft: false
authors: ["P. Whalen", "M. Brio", "J.V. Moloney"]
publication: "Journal of Computational Physics Volume 280 , 1 January 2015, Pages 579-601"
abstract: "We have presented the first embedded Runge–Kutta exponential time-differencing (RKETD) methods of fourth order with third order embedding and fifth order with third order embedding for non-Rosenbrock type nonlinear systems. A procedure for constructing RKETD methods that accounts for both order conditions and stability is outlined. In our stability analysis, the fast time scale is represented by a full linear operator in contrast to particular scalar cases considered before. An effective time-stepping strategy based on reducing both ETD function evaluations and rejected steps is described. Comparisons of performance with adaptive-stepping integrating factor (IF) are carried out on a set of canonical partial differential equations: the shock-fronts of Burgers equation, interacting KdV solitons, KS controlled chaos, and critical collapse of two-dimensional NLS."
url_source: "https://www.sciencedirect.com/science/article/abs/pii/S0021999114006743"
---

## Summary

Discovery of several new adaptive step Runge-Kutta exponential time-differencing methods. Analysis of
performance and stability of the methods with comparison to integrating factor and constant step methods.

## Python Library

Adaptive step solvers are available as a python library via pypi install `python3 -m pip install rkstiff`. This code is a publically available repo on [github](https://github.com/whalenpt/rkstiff) with jupyter notebook examples.

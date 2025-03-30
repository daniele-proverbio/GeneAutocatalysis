# GeneAutocatalysis

Code to reproduce the results of the article "Resilience of the autocatalytic feedback loop for gene regulation".

## Files:
- resilience_genes.nb contains symbolic manipulation of the equilibria for n=2 and Fokker-Plank equations for all n (requires Mathematica > 14)
- equilibria_coop.m gets numerically the equilibria for n>2 (requires Matlab > R2024)
- simulations_delta_sigma.m performs resilience simulations
- analysis_delta_sigma.m creates figures out of the saved data from simulations_delta_sigma.m
- SimulationGeneAutocatalysis.m creates Fig. 1

## Cite
Reusing the code requires citing the original manuscript: D. Proverbio and G. Giordano, "Resilience of the autocatalytic feedback loop for gene regulation" (submitted to CDC2025)

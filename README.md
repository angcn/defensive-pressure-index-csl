# Defensive Pressure Index in the Chinese Super League

This repository contains code and supporting materials for the article:

Li, J., Wu, F., Li, A., & Martinez-Santos, R. (2026). Development and initial validation of a defensive pressure index using tracking data in the Chinese Super League. *Frontiers in Sports and Active Living, 8*, 1833549. https://doi.org/10.3389/fspor.2026.1833549

## Overview

The study developed and initially validated a Defensive Pressure Index (DPI) using tracking data from 30 Chinese Super League matches from the 2018 season. The DPI was designed to quantify the spatiotemporal constraints imposed by the defending team during defensive sequences.

The analysis included 2,032 defensive sequences and examined:

- the construction of a sequence-level Defensive Pressure Index;
- the association between DPI and defensive outcomes;
- whether DPI differed across running score.

## Defensive Pressure Index

The DPI combines six spatial-tactical variables:

1. `DPGZ`: defensive possession gain zone;
2. `DPPBND`: distance between the ball carrier and the nearest defender;
3. `DNUM`: number of defenders around the ball carrier;
4. `PL`: length of the final attacking pass;
5. `PN`: number of attacking passes before sequence termination;
6. `DLAODGL`: distance from the least advanced outfield defender to the own goal line.

Higher DPI values indicate greater defensive pressure at the defensive-sequence level.

## Repository Structure

```text
.
├── code/
│   └── main_analysis.Rmd
├── data/
│   ├── README_data.md
│   └── example_data.csv
├── docs/
│   └── variable_definitions.md
├── manuscript/
│   ├── article_information.md
│   └── published_article.pdf
└── results/
    └── figures/
```

## Data Availability

The raw Amisco tracking data used in the study are not included in this repository because they are subject to data-sharing restrictions from the original data provider.

The `data/example_data.csv` file is a small synthetic example showing the expected variable structure for the analysis code. It is not the original study dataset and should not be used to reproduce the published numerical results.

## Code

The main analysis workflow is provided in `code/main_analysis.Rmd`. It contains the procedures used for DPI construction, exploratory analysis, model fitting, and figure generation.

The original analysis code was developed during the article workflow and may require path adjustments before reuse with a local dataset.

## Citation

If you use this repository, the code, or the DPI framework, please cite the published article:

Li, J., Wu, F., Li, A., & Martinez-Santos, R. (2026). Development and initial validation of a defensive pressure index using tracking data in the Chinese Super League. *Frontiers in Sports and Active Living, 8*, 1833549. https://doi.org/10.3389/fspor.2026.1833549

## License

The code in this repository is released under the MIT License. The published article is distributed under the Creative Commons Attribution License (CC BY), as stated by the publisher. Raw tracking data are not included and remain subject to the original data provider's restrictions.


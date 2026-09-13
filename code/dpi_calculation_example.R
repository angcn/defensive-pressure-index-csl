# Defensive Pressure Index calculation example
#
# This script demonstrates the expected data structure and the main processing
# steps used to calculate a sequence-level Defensive Pressure Index (DPI).
# The example data are synthetic and cannot reproduce the published results.

library(readr)
library(dplyr)

dat <- read_csv("data/example_data.csv", show_col_types = FALSE)

eps <- 1e-6

dat_dpi <- dat %>%
  mutate(
    DPPBND_inv = 1 / (DPPBND + eps),
    PL_inv = 1 / (PL + eps),
    DLAODGL_inv = 1 / (DLAODGL + eps)
  ) %>%
  mutate(
    z_DPGZ = as.numeric(scale(DPGZ)),
    z_DPPBND_inv = as.numeric(scale(DPPBND_inv)),
    z_Defenders_Num = as.numeric(scale(Defenders_Num)),
    z_PL_inv = as.numeric(scale(PL_inv)),
    z_PN = as.numeric(scale(PN)),
    z_DLAODGL_inv = as.numeric(scale(DLAODGL_inv))
  ) %>%
  mutate(
    DPI_unweighted = z_DPGZ +
      z_DPPBND_inv +
      z_Defenders_Num +
      z_PL_inv +
      z_PN +
      z_DLAODGL_inv,
    DPI_z = as.numeric(scale(DPI_unweighted))
  )

print(dat_dpi)


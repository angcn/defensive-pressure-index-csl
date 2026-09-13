# Statistical analysis template for the Defensive Pressure Index article
#
# Replace `data/example_data.csv` with a local permitted dataset containing the
# same variables. The original Amisco tracking data are not included in this
# repository.

library(readr)
library(dplyr)
library(MASS)
library(car)

dat <- read_csv("data/example_data.csv", show_col_types = FALSE)

dat <- dat %>%
  mutate(
    Outcome = ordered(Outcome, levels = c("F", "GP", "CDS")),
    Running_score = factor(Running_score, levels = c("losing", "drawing", "winning"))
  )

# Example ordinal logistic regression.
# This template uses the original variables directly. Adapt the model to match
# the exact DPI construction and final analysis reported in the article.
fit_polr <- polr(
  Outcome ~ DPGZ + DPPBND + Defenders_Num + PL + PN + DLAODGL,
  data = dat,
  method = "logistic",
  Hess = TRUE
)

print(summary(fit_polr))

# Example one-way ANOVA for contextual comparison.
fit_aov <- aov(DPGZ ~ Running_score, data = dat)
print(summary(fit_aov))


# Rather than caching several large data sets,
# here's the script used to generate them:

library(arrow)
library(dplyr)
library(tibble)

set.seed(3567)

n <- 100000000
dat <- tibble(
  junk01 = rnorm(n),
  junk02 = rnorm(n),
  junk03 = rnorm(n),
  junk04 = rnorm(n),
  junk05 = rnorm(n),
  subset = sample(10, size = n, replace = TRUE)
)

write_csv_arrow(dat, file = "random_data.csv")
write_parquet(dat, "random_data.parquet")

dat |>
  group_by(subset) |>
  write_dataset("random_data")

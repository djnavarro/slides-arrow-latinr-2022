library(arrow)
library(dplyr)
library(tibble)

set.seed(3567)

n <- 2000000
dat <- tibble(
  junk01 = rnorm(n),
  junk02 = rnorm(n),
  junk03 = rnorm(n),
  junk04 = rnorm(n),
  junk05 = rnorm(n)
)

write_csv_arrow(dat, file = "random_data.csv")
write_parquet(dat, "random_data.parquet")


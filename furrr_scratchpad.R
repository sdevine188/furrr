# furrr to parrellel mapping functions
# https://github.com/DavisVaughan/furrr


library(furrr)
library(tictoc)

# This should take 6 seconds in total running sequentially
plan(sequential)
tic()
nothingness <- future_map(c(2, 2, 2), ~Sys.sleep(.x))
toc()

# This should take ~2 seconds running in parallel, with a little overhead
plan(multiprocess)
tic()
nothingness <- future_map(c(2, 2, 2), ~Sys.sleep(.x))
toc()
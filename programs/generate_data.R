#' # Generate Data
#' 
#' ## Generate data used in the Git Started Tutorial exercises
#' 
#' Set Seed
set.seed(8675309)

#' Characteristics of 100 unicorns
unicorn.ID <- seq(from = 1, to = 100, by = 1)
horn.length <- rnorm(n = 100, mean = 5, sd = 2)
age <- 1 + 0.5*horn.length + rnorm(n = 100, mean = 0, sd = .1)
summary(age)

#' Combine into a new dataset
unicorn_data <- as.data.frame(cbind(unicorn.ID, horn.length, age))

#' Export dataset
save(unicorn_data, file = "data/unicorn_data.R")

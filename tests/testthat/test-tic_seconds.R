library(tictoc)
tic()
m <- lm(mpg ~ ., mtcars)
toc(log = TRUE)

tic()
m <- lm(mpg ~ hp, mtcars)
toc(log = TRUE)

time_check <- as.character(tic_seconds(1, 0))
digit_check1 <- as.character(tic_seconds(1, 0))
digit_check2 <- as.character(tic_seconds(1, 3))

test_that("tic_seconds works", {
  expect_true(tic_seconds(1, digits = 5) != tic_seconds(2, digits = 5))
  expect_equal("0", time_check)
  expect_equal(1, nchar(digit_check1))
  expect_equal(5, nchar(digit_check2))
})


datasets <- c("benchmarks", "ds-bowl-2019", "k-entry", "sesame", "state-test",
              "titanic", "violence")
all_data <- lapply(datasets, get_data)
names(all_data) <- datasets

is_df <- vapply(all_data, is.data.frame, FUN.VALUE = logical(1))

nrows <- vapply(all_data, nrow, FUN.VALUE = integer(1))
expected_rows <- c(174, 86729, 41807, 240, 189426, 891, 2215)

ncols <- vapply(all_data, ncol, FUN.VALUE = integer(1))
expected_cols <- c(7, 6, 25, 20, 40, 12, 147)

test_that("Data charactersitics are as expected", {
  expect_true(all(is_df))
  expect_equal(as.double(nrows), expected_rows)
  expect_equal(as.double(ncols), expected_cols)
})

test_that("dsi-bowl-2019 accuracy_group is anordered factor", {
  expect_true(is.factor(all_data$`ds-bowl-2019`$accuracy_group))
  expect_true(is.ordered(all_data$`ds-bowl-2019`$accuracy_group))
})

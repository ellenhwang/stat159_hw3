source("functions/regression-functions.R")

context("testing regression functions")

# multiple regression
reg <- lm(mpg ~ disp + hp, data = mtcars)

# summary of 'reg'
regsum <- summary(reg)

test_that("residual_sum_squares function is working", {
  expect_gt(residual_sum_squares(reg), 0)
  expect_equal(length(residual_sum_squares(reg)), 1)
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
})

test_that("total_sum_squares function is working", {
  expect_gt(total_sum_squares(reg), 0)
  expect_equal(length(total_sum_squares(reg)), 1)
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
})

test_that("r_squared function is working", {
  expect_gt(r_squared(reg), 0)
  expect_lt(r_squared(reg), 1)
  expect_equal(length(r_squared(reg)), 1)
  expect_equal(r_squared(reg), regsum$r.squared)
})


test_that("f_statistic function is working", {
  expect_gt(f_statistic(reg), 0)
  expect_equal(length(f_statistic(reg)), 1)
  expect_equal(f_statistic(reg), regsum$fstatistic[1])
})

test_that("residual_std_error function is working", {
  expect_gt(residual_std_error(reg), 0)
  expect_equal(length(residual_std_error(reg)), 1)
  expect_equal(residual_std_error(reg), regsum$sigma)
})


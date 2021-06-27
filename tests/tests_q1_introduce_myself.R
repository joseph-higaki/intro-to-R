# Not sure how and where best to install packages, such as: testthat
source("../q1_introduce_myself.R", chdir = TRUE)
library(testthat)
library(devtools)
#testthat::test_dir('tests') 

#build_job_list_phrase
test_that("empty job list", {
  expect_equal(build_job_list_phrase(NULL), "")
})

test_that("single item job list", {
  expect_equal(build_job_list_phrase(c("single item")), "single item")
})

test_that("two item job list", {
  testthat::expect_equal(
    build_job_list_phrase(c("first item", "second item")),
    "first item and second item")
})

test_that("three item job list", {
  testthat::expect_equal(
    build_job_list_phrase(c("first item", "second item", "third item")),
    "first item, second item and third item")
})

#build_cat_ownership_phrase
test_that("zero cats owned", {
  testthat::expect_equal(
    build_cat_ownership_phrase(0), "")
})

test_that("one cat owned", {
  testthat::expect_equal(
    build_cat_ownership_phrase(1), "owns 1 cat")
})

test_that("three cats owned", {
  testthat::expect_equal(
    build_cat_ownership_phrase(3), "owns 3 cats")
})

#build_introduction_message 
test_that("John unemployed no cats", {
  testthat::expect_equal(
    build_introduction_message("John", 0, NULL), "John")
})
#Joseph owns 1 cat has been a  programmer, business analyst, software engineering supv, scrum monster and delivery manager



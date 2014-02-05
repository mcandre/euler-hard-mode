#!/usr/bin/env Rscript

naturals <- 1:999

multiples <- Filter(function (n) { return (n %% 3 == 0 || n %% 5 == 0) }, naturals)

s <- sum(multiples)

cat(s, "\n")

q("no")

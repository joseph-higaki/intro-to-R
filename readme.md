# Introduction to R 
This is a course assignment as an Introduction to R.
This is from the Data Science and Advanced Analytics course from the Big Data &amp; Analytics Masters @ [EAE](https://www.eae.es/) class of 2021.
The assignment poses three simple questions that are useful to get us started in how the R syntax, data structures, functions and environments work. 

## Introduce yourself - using R
1. Q1: Define some variables holding information about yourselves (make the effort of playing around
with different types!) and create an introduction just like: 

`## [1] "Pere has 1 cat and is a Data Engineer and a Teacher"`

**Answer**
* Variables to store name, number of cats and job array
* functions to build phrase stating how many cats I have and which jobs. Catering for no pets or jobs, or single job.
* I wanted to explore what I could use to have unit tests, I used [testthat](https://testthat.r-lib.org/) library 

The answer script is at: 
[q1_introduce_myself.R](https://github.com/joseph-higaki/intro-to-R/blob/3bdb68e805c39c721913597e0bd97a474019d033/q1_introduce_myself.R) 


## Sum of multiples of x ,y below N
1. Q2: Lets’s try to solve one problem from Project Euler: If we list all the natural numbers below 10
that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of
all the multiples of 3 or 5 below 1000. Instead of just finding the sum of the multiples < 1000, create
a function that passing a natural number n, returns the sum of all multiples of 3 and 5 < n. OBS: We
will suppose that n is not very big, so we do not care now about performance. Let’s just try to make
it work :)

**Answer**
Two solutions. The first one just iterates from 1 to n-1 accumulating multiples of x,y
The second approach iterates backwards from n to 1, instead of iterating one by one, it iterates in greatest common divisor steps.

The answer script is at: 
[q2_euler.R](https://github.com/joseph-higaki/intro-to-R/blob/3bdb68e805c39c721913597e0bd97a474019d033/q2_euler.R) 

## Fibonacci / recursion
1. Q3: Define a function capable of computing the Fibonacci number of an input natural value. Use the
properties of the Fibonacci series:

**Answer**
Simple recursive fibonacci function
[q3_fibonacci.R](https://github.com/joseph-higaki/intro-to-R/blob/3bdb68e805c39c721913597e0bd97a474019d033/q3_fibonacci.R) 


# Professor
* **[Marta Tolós](https://www.linkedin.com/in/martatolos/)**
 
**Professor Assistants**
* [Pere Miquel Brull Borràs](https://www.linkedin.com/in/pmbrull/)
* [Alberto Villa](https://www.linkedin.com/in/avillam/)

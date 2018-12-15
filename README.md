### Introduction

Second Programming Assignment

Here we create objects `makeCacheMatrix` and `cacheSolve`;  a pair of functions
that are respectively used to hold a matrix and its inverse in a cache and to
compute and store the inverse in the cache

The object `makeCacheMatrix` returns a list of functions and `cacheSolve` returns
the invere of the matrix contained in `makeCacheMatrix`.

Issues: 
Does not consider non-invertible matrix

### Usage Example


```
> a = matrix(c(3,1,1,1,3,1,1,1,3), 3, 3)
> ca <- makeCacheMatrix(a)
> cacheSolve(ca)
     [,1] [,2] [,3]
[1,]  0.4 -0.1 -0.1
[2,] -0.1  0.4 -0.1
[3,] -0.1 -0.1  0.4
> cacheSolve(ca)
getting cached data
     [,1] [,2] [,3]
[1,]  0.4 -0.1 -0.1
[2,] -0.1  0.4 -0.1
[3,] -0.1 -0.1  0.4
> 
> cacheSolve(ca, LINPACK = TRUE)
     [,1] [,2] [,3]
[1,]  0.4 -0.1 -0.1
[2,] -0.1  0.4 -0.1
[3,] -0.1 -0.1  0.4
> cacheSolve(ca)
getting cached data
     [,1] [,2] [,3]
[1,]  0.4 -0.1 -0.1
[2,] -0.1  0.4 -0.1
[3,] -0.1 -0.1  0.4
> 
```
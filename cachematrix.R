## Programming Assignment 2

## The task is to write a function that creates a
## special matrix object that can cache its inverse.

## The functions below:
## 1. create a special matrix and
## 2. cache its inverse

## 1.

makeCacheMatrix <- function (a=matrix ()) {
	inverse <- NULL
	set <- function (b) {
	a <<- b
	inverse <- NULL
	}

get <- function () a
	set.inverse <- function (solve) inverse <<- solve
	get.inverse <- function () inverse
	list (set=set, get=get, 
	set.inverse=set.inverse, get.inverse=get.inverse)
	}

## The matrix is created.
## The next step is calculating the inverse of the matrix.
## Before the function calculates the inverse it checks if
## the inverse has already been calculated.
## If so, it gets the inverse from the cache and skips the 
## computation.
## If not, it calculates the inverse of the matrix and sets 
## the value of the inverse in the cache via set.inverse 

## 2.

cacheSolve <- function (a) {
	inverse <- a$get.inverse ()
	if (!is.null(inverse)) {
	message ("cached data")
	return (inverse)
	}

data <- a$get()
	inverse <- solve ()
	a$set.inverse (inverse)
	inverse
	}

## The inverse is now returned.

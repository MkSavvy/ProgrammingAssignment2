## THIS page has 2 functions meant to cache the inverted matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		invertedMatrix<-NULL
		get <- function() x       #function to check the current content of our makeCacheMatrix object
		set <- function(newx) {   #function to change the matrix inside our makeCacheMatrix object
			x<<-newx
			invertedMatrix<<-NULL
		}
		getInvertedMatrix<- function() invertedMatrix     #function to get the inverted matrix inside our Cached Matrix
		setInvertedMatrix<- function(im) {   #function called by cacheSolve(), potentially risky to call by user
			invertedMatrix<<-im
		}
		list(get = get,set=set, getInvertedMatrix=getInvertedMatrix,setInvertedMatrix=setInvertedMatrix)
}


## Receives a special matrix from makeCacheMatrix() and computes its inverse, unless it is already done previously

cacheSolve <- function(x, ...) {
       
        solvedMatrix <- x$getInvertedMatrix()   #call the function within the matrix of interest, if first time, then this will be NULL
        if(!is.null(solvedMatrix)) {                     #if this is true, then matrix was already inverted
                message("getting cached data")
                return(solvedmatrix)
        }
		x$setInvertedMatrix(solve(x$get()))    #place the inverted Matrix within the cache of the matrix
        solve(x$get())     ## Return a matrix that is the inverse of 'x'
}

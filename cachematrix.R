---
        title: "R Notebook"
output: html_notebook
---
        
        ## First function creates the vector that contains a series of functions
        
        makeCacheMatrix <- function(x = matrix()) {
                inv <- NULL
                set <- function(y){
                        x <<- y
                        inv <<- NULL
                }
                get <- function() {x}
                setInverse <- function(inverse) {inv <<- inverse}
                getInverse <- function () {inv}
                list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
                
        }
## the second function is what calculates the above vector. First by ensuring that it hasnt already been solved
##then calculating if mean data.

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("Getting cached data")
                return(inv)
                #this is what returns the already completed calculation if it has already been completed
                
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

#this took a lot of time because the lessons are actuall pretty awful. Good Luck!

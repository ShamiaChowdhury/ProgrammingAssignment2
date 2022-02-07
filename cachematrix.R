#This chunk of the code is for set and get functions.
makeCacheMatrix <- function(x = matrix()) {
   m <- NULL
    set <- function(matrix) {
         x <<- matrix
         m <<- NULL
    }
   # variable x is used for matrix, variable m, i left the same.
     get <- function() {
     x
 }  
 setInverse <- function(inverse){
 m <<- inverse
 }
getInverse <- function(){
m
 }
 list(set=set,get=get,setInverse = setInverse, getInverse = getInverse)

}

cacheSolve <- function(x, ...) {
        ## This code is for returning a matrix that is the inverse of 'x'
        m <- x$getmean()
     if(!is.null(m)) {
         message("getting cached data")
       #this return a message during run time
         return(m)
     }
     data <- x$get()
     m <- mean(data, ...)
     x$setmean(m)
     m
}

## Put comments here that give an overall description of what your
## functions do
## 1.  set the value of the matrix 
## 2.  get the value of the matrix 
## 3.  setinv function sets the value of the matrix inverse 
## 4.  getinv function gets the value of the matrix inverse 
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 # initialize the mymatrix object
  mymatrix <- NULL 
  
  # Gets the input matrix and save it to object x AND initialize the mat object to Null
  set <- function(inputmatrix) 
  { 
    x <<- inputmatrix
    mymatrix <<- NULL 
  } 
  # This function returns the original matrix
  get <- function() 
  { 
    x 
  }
  # This function sets the inverse of the matrix.
  setInverse <- function(Inverse) 
  { 
    mymatrix <<- Inverse 
  }
  # This function returns the inverse of the matrix.
  getInverse <- function() 
  {
    mymatrix 
  }
  list(set = set, 
       get = get, 
       setInverse = setInverse, 
       getInverse = getInverse) 
}
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mymatrix <- x$getInverse() 
  
  #check null to return cached data 
  if(!is.null(mymatrix)) 
  { 
    # Return the inverse of the matrix from cache.  
    return(mymatrix) 
  } 
  
  # Source the matrixdata from x
  matrixdata <- x$get() 
  
  #solve function creates inverse of the matrix 
  mymatrix <- solve(matrixdata, ...) 
  
  #Assign the inverse to mymatrix matrix
  x$setInverse(mymatrix) 
  
  # Return the Inverse of the matrix
  mymatrix 
}

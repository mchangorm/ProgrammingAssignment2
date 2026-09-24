## Create a 2x2 matrix
#my_matrix <- matrix(c(7, 8, 2, 6), nrow = 2)

## Create a special matrix object and cache it
#cached_matrix <- makeCacheMatrix(my_matrix)

## Compute and cache the inverse of the matrix
#inverse_matrix_1 <- cacheSolve(cached_matrix)
#print("First calculation (inverse matrix):")
#print(inverse_matrix_1)

## Calling cacheSolve again should fetch the inverse matrix from the cache 
## instead of recalculating it
#inverse_matrix_2 <- cacheSolve(cached_matrix)
#print("Second calculation (cached inverse matrix):")
#print(inverse_matrix_2)
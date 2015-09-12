x = ones(3)

 y = [2, 4, 6]


 x + y

  4x # equivalent to 4 * x and 4 .* x

   dot(x, y) # Inner product of x and y 
   sum(x .* y) # Gives the same result
   norm(x) # Norm of x
   sqrt(sum(x.^2)) # Gives the same result

A = [1 2
	 3 4]
	
	typeof(A)
	size(A)

A = eye(3)
B = ones(3, 3)

	2A
	A + B

 A = [1.0 2.0
      3.0 4.0];
 y = ones(2, 1); # A column vector

	det(A)
	#-2.0
A_inv = inv(A)
	#-2.0 1.0
	#1.5 -0.5
x = A_inv * y # solution
	#-1.0
	#1.0

	A * x # should equal y (a vector of ones)
	#1.0
	#1.0

	A\y # produces the same solution
	#-1.0
	#1.0

A = [1.0 2.0
	 2.0 1.0];
evals, evecs = eig(A);

	evals
	#-1.0
	#3.0
	
	evecs
	#-0.707107 0.707107
	#0.707107 0.707107



# 1d arrays 
arr = [1,2,3,4,5]
append!(arr, [6])  # append function. 


println("Array arr has ", ndims(arr), " dimension.")  

println("Array arr is size ", size(arr))   # size of the arrayprintln(arr)

A = [1 2 3; 4 5 6; 7 8 9] 


println(size(A))  



# I can't seem to find an argument allowing you to reshape by row 

B = reshape([1:12], 3, 4)

A = reshape([1.0,2.0,3.0,4.0], 1,4)  

println(A) 

println(A * eye(4)) # yields the same result



B = [1 2; 3 4] 

B * inv(B)      # B * inv(B) returns the identity matrix

A = [1 2 3; 4 5 6] 
println(A)     

println(A')    # A transpose


# ************* Eigenvalues and Eigenvectors *********** # 
A = [2 -4; -1 -1] 
x = [4; -1] 

eigVal = 3  

println(A * x) 

println(eigVal * x)



w, v = eig(A) 
print(w)     # these are the eigenvalues

# ok, so the square matrix A has two eigenvalues, 3 and -2. 
# but what about the corresponding eigenvector?  v      

# this is the normalized eigenvector corresponding to w[0], or 3.  



# let's unnormalize it to see if we were right.  

# the length of our original eigenvector x
length = sqrt(x[1]^2 + x[2]^2) 
println(v[:, 1] * length) 

println("Our original eigenvector was [4, -1]") 


# ************************ Determinants ****************** # 
A = [1 2; 3 4] 
print("det(A) = ", det(A))


# ****** Singular Value Decomposition ****** # 
A = [1 2  3  4  5  6  7  8
     9 10 11 12 4  23 45 2
     5 3  5  2  56 3  6  4]  


U, s, V = svd(A)



# 10 random numbers from a standard normal distribution
A = randn(10) 
B = rand(10) # 10 random numbers in [0,1]

A = [3 3 3] 
B = [2 3 4] 



A .< B


# Indexing matrices 
A = [1 2 3; 4 5 6; 7 8 9] 

A[:]     # flattens array by column 

A[1, :]  # first row 

A[:, 1]  # first column 

A[2, 3]  # second row, third column







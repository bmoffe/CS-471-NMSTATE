# Brianna Moffett
# 09.28.2020
# CS471
# 
# INPUT: integer value for size of matrix
# OUTPUT: time to compute solution
# 
# PRE: integer input must be positive
# POST: time output in milliseconds
#
# Note: This implemenation uses numpy with no pivoting
# 
# Source code: https://learnche.org/3E4/Assignment_2_-_2010_-_Solution/Bonus_question

import random
import time

def forward_elimination (A, b, n): # Calculates forward of Gaussian elimination
    for row in range(0, n-1):
        for i in range(row+1, n):
            factor = A[i][row]/A[row][row]
            for j in range(row, n):
                A[i][j] = A[i][j] - factor * A[row][j]
            b[i] = b[i] - factor * b[row]
        # print('A = \n%s and b = %s' % (A,b))
    return A, b
def back_substitution(a, b, n): # Calculates back of Gaussina elimination, returns result
    x = [[0. for i in range(n)] for k in range(n)]
    x[n-1] = b[n-1] / a[n-1][n-1]
    for row in range (n-2, -1, -1):
        sums = b[row]
        for j in range(row+1, n):
            sums = sums - a[row][j] * x[j]
        x[row] = sums / a[row][row]
    return x
def gauss(A,b,n): # performs Guassian elimination without pivoting
    A, b = forward_elimination(A,b,n)
    return back_substitution(A,b,n)
def main():
    n = input("Enter matrix size: ") #taking in size of matrix
    n = int(n)
    A = []
    for i in range(n): #filling matrix
        b = []
        for j in range(n):
            b.append(random.random())
        A.append(b)
    # print('Gauss result is x = \n %s' % x)
    print("Starting timer...")
    start = time.time() #start timer
    gauss(A,b,n) #solving
    print("Stopping timer...")
    end = time.time() #end timer
    print("Time to run was ", end-start, " seconds.")
if __name__ == '__main__':
    main()

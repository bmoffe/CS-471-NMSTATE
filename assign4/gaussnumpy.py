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

import numpy as np
import random
import time

def main():
    n = input("Enter matrix size: ")
    n = int(n)
    print("Starting timer...")
    start = time.time() #starting timer
    A = np.random.rand(n,n) #filling matrix
    b = np.random.rand(n) #filling matrix
    x = np.linalg.solve(A,b) #solving
    print("Stopping timer...") 
    end = time.time() #stopping timer
    print("Time to run was ", end-start, " seconds.") #printing run time
if __name__ == '__main__':
    main()

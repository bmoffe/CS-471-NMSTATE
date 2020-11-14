
// Brianna Moffett
// 11.13.2020
// CS471
// MyThreadTest.java
//
// INPUT: matrix size (N)
// OUPTUT: min, max, averages of matrices, and run time
//
// PRE: size shall be positive
// POST: values shall be positive
//
// // from http://www.letmeknows.com/2017/04/24/wait-for-threads-to-finish-java/ //
// This is a very small set up to get people started on using threads
//
//
//
//
//  Adopted by Shaun Cooper
//  last updated November 2020
//
//  We need static variable pointers in the main class so that
//  we can share these values with the threads.
//  the threads are address separate from us, so we need to share
//  pointers to the objects that we are sharing and updating

import java.util.ArrayList;
import java.util.Scanner;
import java.util.Random;
import java.util.concurrent.TimeUnit;
public class MythreadTest {
    
    private static ArrayList<Thread> arrThreads = new ArrayList<Thread>();

    // we use static variables to help us connect the threads
    // to a common block
    public static int N=0;
    public static int[][] A;

    //main entry point for the process
    public static int min[];//calculation values
    public static int max[];
    public static float average[];
    public static int size = 0;
    public static int rsize = 0;

    public static void main(String[] args) {
        try {	
		size = Integer.parseInt(args[0]);
		min = new int[size];//initialization
		max = new int[size];
		average = new float[size];
		rsize = (size * size);
		N = Integer.parseInt(args[0]);//determining size of matrix
		// create the array from input
		A = new int[size][size];//prep for value fill
		//
		// fill array with random valuesvalues
		double start = Math.pow(2, (32-N));//max
		double end = Math.pow(2, (31-N));//min
		double range = start - end;//range
		for(int i = 0; i < A.length; i++){//filling matrix
			for (int j = 0; j < A[i].length; j++){
				A[i][j] = ((int)(range * Math.random() + N));
			}
		}
		//
		long startTime = System.nanoTime();//timer start
		// create N threads to work on each row
            for (int i = 0; i < size; i++) 
            {
                Thread T1 = new Thread(new ThreadTest(i));                
                T1.start();                 // standard thread start
                arrThreads.add(T1);
            } 
            
	    // wait for each thread to complete
            for (int i = 0; i < arrThreads.size(); i++) 
            {
                arrThreads.get(i).join(); 
            } 
	    int wholemax = max[0];//calculation vars
	    int wholemin = min[0];
	    float wholeaverage = 0;
	    // all the threads are done
	    // do final calculations
	    for (int a = 0; a < size; a++){//final calculation for max and min
		    wholemax = Math.max(wholemax, max[a]);
		    wholemin = Math.min(wholemin, min[a]);
	    }
	    for (int b = 0; b < size; b++){//final calculation for average
		    wholeaverage += MythreadTest.average[b];
	    }
	    long endTime = System.nanoTime();//end time
	    long timeElapsed = endTime - startTime;//compute time
	    System.out.printf("Max: %d\nMin: %d\nAverage: %f\n", wholemax, wholemin, wholeaverage);//print values
	    System.out.println("Execution time in milliseconds: " + timeElapsed / 1000000);//print time
	    System.out.println("Main Thread has N as value " + N) ;
            //This for loop will not stop execution of any thread, 
            //only it will come out when all thread are executed    
            
            System.out.println("Main thread exiting ");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

// each thread should access its row based on "ind"
// and leave results I would suggest in a static array that you need
// to create  in MythreadTest

class ThreadTest implements Runnable {
     private int i;
     ThreadTest(int ind) 
     {
        i = ind;
     }
     public void run() {
        try
        {
    	    MythreadTest.N += i ; // this is a global variable in MythreadTest we add stuff together;
            MythreadTest.max[i] = MythreadTest.A[i][0];//matrix max
	    MythreadTest.min[i] = MythreadTest.A[i][0];//matrix min
	    for (int j = 0; j < MythreadTest.A[i].length; j++){//matrix math
		    MythreadTest.max[i] = Math.max(MythreadTest.A[i][j], MythreadTest.max[i]);//max of each row
		    MythreadTest.min[i] = Math.min(MythreadTest.A[i][j], MythreadTest.min[i]);//min of each row
		    MythreadTest.average[i] += MythreadTest.A[i][j] / MythreadTest.rsize;//average of each row
	    }
	    System.out.println("Thread is started " + i);
            System.out.println("Thread is exiting " + i);
        }
        catch (Exception e) {
            System.out.println(e);
        }     }
}

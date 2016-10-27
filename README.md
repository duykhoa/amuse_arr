# amuse_arr

Problem 3:


2 arrays of Z+ (integer and > 0) a1, a2, …, an  and b1, b2...bn . We call them “similar” if: 


ai > aj    =>   bi > bj
ai = aj    =>   bi > bj
ai < aj    =>   bi < bj


These conditions are satisfied with all i, j from 1 to n.


Requirement: Given a1,a2...an , find the b1, b2,...bn with the minimum b1 + b2 + … + bn.


INPUT:
Input file (input.inp) followed the format


1st line: T is the size of data 
T lines of data, use space and no newline at the end


OUTPUT:
File (output.out) includes T lines, each line is a similar array of an (a1,a2...an). No newline at the end of file.


Examples


+-----------+------------+
| input.inp | output.out |
+-----------+------------+
| 1         |            |
| 2 3 1     | 2 3 1      |
+-----------+------------+


Notes


50% testcase: n  8, T = 1;
50% testcase: n  50, T  10;

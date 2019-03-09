# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *

file = open('input/input.txt', 'r')

inputi = file.readline()
inputi = inputi.split()
file.close()
file = open('output/saida.txt','w')
t, y = symbols("t y")
function = sympify(inputi[5])
y0, t0, h, n = sympify(inputi[1]), sympify(inputi[2]), sympify(inputi[3]), sympify(inputi[4]) 

for j in range(0, n+1):
    k1 = function.subs([(t, t0), (y, y0)])
    file.write(str(j))
    file.write(" ")
    file.write(str(y0))
    file.write("\n")
    y0 = y0 + h*k1
    t0 = t0 + h

file.close()





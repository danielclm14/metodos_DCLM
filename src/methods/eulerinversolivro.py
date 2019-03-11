# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *
class EulerInverso:
    def __init__(self, info):
		self.inputi = info

    def method(self):
        fileOut = open('output/saida.txt','a')
        t, y = symbols("t y")
        function = sympify(self.inputi[5])
        y0, t0, h, n = sympify(self.inputi[1]), sympify(self.inputi[2]), sympify(self.inputi[3]), sympify(self.inputi[4]) 
        fileOut.write("\nMetodo de " +self.inputi[0] + "\n")
        fileOut.write("y(" + str(t0) + ") = " + str(y0) + "\n")
        fileOut.write("H = " + str(h) + "\n")
        for j in range(0, n+1):
            t0 = t0 + h
            y1 = y0 + h*function
            f2 = solveset(Eq(y,y1),y)
            f3 = f2.subs(t,t0)
            y0 = f3.args[0]
            fileOut.write(str(j))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write("\n")
            
            
        fileOut.close()


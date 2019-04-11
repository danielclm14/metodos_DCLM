# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *
class RungeKutta:
    def __init__(self, info):
		self.inputi = info

    def method(self):
        fileOut = open('output/saida.txt','a')
        fileOut2 = open('output/rungekutta.csv','w')
        t, y = symbols("t y")
        function = sympify(self.inputi[5])
        y0, t0, h, n = sympify(self.inputi[1]), sympify(self.inputi[2]), sympify(self.inputi[3]), sympify(self.inputi[4]) 
        fileOut.write("\nMetodo de " + self.inputi[0] + "\n")
        fileOut.write("y(" + str(t0) + ") = " + str(y0) + "\n")
        fileOut.write("H = " + str(h) + "\n")

        for j in range(0, n+1):
            k1 = function.subs([(t, t0), (y, y0)])
            k2 = function.subs([(t, t0 + h/2), (y, y0 + ((h/2)*k1))])
            k3 = function.subs([(t, t0 + h/2), (y, y0 + ((h/2)*k2))])
            k4 = function.subs([(t, t0 + h), (y, y0 + h*k3)])
            fileOut.write(str(j))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write(" ")
            fileOut.write(str(t0))
            fileOut.write("\n")
            fileOut2.write(str(j))
            fileOut2.write(" ")
            fileOut2.write(str(y0))
            fileOut2.write("\n")
            y0 = y0 + (h/6)*(k1+2*k2+2*k3+k4)
            t0 = t0 + h
        fileOut.close()
        fileOut2.close()



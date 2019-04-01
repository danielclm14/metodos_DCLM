# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *

s1 = [1]
s2 = [-0.5, 1.5]
s3 = [5./12, -4./3, 23./12]
s4 = [-3./8, 37/24, -59./24, 55./24]
s5 = [251./720, -637./360, 109./30, -1387./360, 1901./720]
s6 = [-95/288, 959/480, -3649/720, 4991/720, -2641/480, 4277/1440]
s7 = [19087/60480, -5603/2520, 135713/20160, -10754/945, 235183/20160, -18637/2520, 198721/60480]

class AdamBashforth:
    def __init__(self, info):
		self.inputi = info

    def method(self):
        fileOut = open('output/saida.txt','a')
        fileOut2 = open('output/adambashforth.csv','w')
        t, y = symbols("t y")
        function = sympify(self.inputi[5])
        y0, t0, h, n = sympify(self.inputi[1]), sympify(self.inputi[2]), sympify(self.inputi[3]), sympify(self.inputi[4])
        fileOut.write("\nMetodo de " + self.inputi[0] + "\n")
        fileOut.write("y(" + str(t0) + ") = " + str(y0) + "\n")
        fileOut.write("H = " + str(h) + "\n")
        SN = len(s6)
        # first n steps made by Euler method
        last_n = []
        for i in range(SN):
            k1 = function.subs([(t, t0), (y, y0)])
            last_n.append(y0)
            fileOut.write(str(i))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write("\n")
            fileOut2.write(str(i))
            fileOut2.write(" ")
            fileOut2.write(str(y0))
            fileOut2.write("\n")
            print(repr(y0) + ' ' + repr(t0) + ' ' + repr(k1))
            y0 = y0 + h*k1
            t0 = t0 + h
        # Adams-Bashforth method
        j = 0
        for i in range(SN,n + 1):
            ss = 0
            for s in s6:
                ss += last_n[j] * s
                j += 1
                if j >= SN: j = 0
            fileOut.write(str(i))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write("\n")
            fileOut2.write(str(i))
            fileOut2.write(" ")
            fileOut2.write(str(y0))
            fileOut2.write("\n")
            print(repr(y0) + ' ' + repr(t0) + ' ' + repr(k1))
            k1 = function.subs([(t, t0), (y, y0)])
            last_n[j] = k1
            y0 += h * ss    
            t0 += h    
            j += 1
            if j >= SN: j = 0
        fileOut.close()
        fileOut2.close()

# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *

s1 = [1]
s2 = [0.5, 0.5]
s3 = [-1./12., 2./3., 5./12.]
s4 = [1./24., -5./24., 19./24., 3./8.]
s5 = [-19./720., 53./360., -11./30., 323./360., 251./720.]
s6 = [3./160., -173./1440., 241./720., -133./240., 1427./1440., 95./288.]
s7 = [-863./60480., 263./2520., -6737./20160., 586./945., -15487./20160., 2713./2520., 19087./60480.]

class AdamMulton:
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
        SN = len(s5)
        # first n steps made by Euler method
        last_n = []
        for i in range(SN):
            k1 = function.subs([(t, t0), (y, y0)])
            fileOut.write(str(i))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write("\n")
            fileOut2.write(str(i))
            fileOut2.write(" ")
            fileOut2.write(str(y0))
            fileOut2.write("\n")
            # print(repr(y0) + ' ' + repr(t0) + ' ' + repr(k1))
            y0 = y0 + h*k1
            last_n.append(y0)
            t0 = float(t0 + h)
        # Adams-Multon method
        for i in range(SN,n + 1):
            fileOut.write(str(i))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write("\n")
            fileOut2.write(str(i))
            fileOut2.write(" ")
            fileOut2.write(str(y0))
            fileOut2.write("\n")
            # y0 += h * sum([function.subs([(t,t0 - j * h),(y,last_n[j])]) * s5[j] for j in range(SN)])
            # last_n = last_n[1:]
            # last_n.append(y0)
            y0 += h * sum([last_n[j] * s5[j] for j in range(SN)])
            last_n = last_n[1:]
            last_n.append(function.subs([(t,t0),(y,y0)]))
            t0 = float(t0 + h)
        fileOut.close()
        fileOut2.close()





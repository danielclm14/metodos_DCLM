# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *

s1 = [1]
s2 = [-0.5, 1.5]
s3 = [5./12., -4./3., 23./12.]
s4 = [-3./8., 37/24, -59./24, 55./24.]
s5 = [251./720., -637./360., 109./30., -1387./360., 1901./720.]
s6 = [-95./288., 959./480., -3649./720., 4991./720., -2641./480., 4277./1440.]
s7 = [19087./60480., -5603./2520., 135713./20160., -10754./945., 235183./20160., -18637./2520., 198721./60480.]

class AdamBashforth:
    def __init__(self, info):
		self.inputi = info

    def method(self):
        fileOut = open('output/saida.txt','a')
        fileOut2 = open('output/adambashforth.csv','w')
        t, y = symbols("t y")
        function = sympify(self.inputi[8])
        y0, t0, h, n = sympify(self.inputi[1]), sympify(self.inputi[5]), sympify(self.inputi[6]), sympify(self.inputi[7])
        fileOut.write("\nMetodo de " + self.inputi[0] + "\n")
        fileOut.write("y(" + str(t0) + ") = " + str(y0) + "\n")
        fileOut.write("H = " + str(h) + "\n")
        SN = len(s4)
        # first n steps made by Euler method
        last_n = []
        for i in range(SN):
            if (self.inputi[0] == "adam_bashforth"):
                y0 = sympify(self.inputi[i+1])
                fileOut.write(str(i))
                fileOut.write(" ")
                fileOut.write(str(y0))
                fileOut.write(" ")
                fileOut.write(str(t0))
                fileOut.write("\n")
                fileOut2.write(str(i))
                fileOut2.write(" ")
                fileOut2.write(str(y0))
                fileOut2.write("\n")
                last_n.append(y0)
                t0 = float(t0 + h)
            if (self.inputi[0].find("_by_euler_") != -1):
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
            if (self.inputi[0].find("_by_eulerinverso_") != -1):
                k1 = function.subs([(t, t0), (y, y0)])
                k2 = function.subs([(t, t0+h), (y, y0 + h*k1)])
                fileOut.write(str(i))
                fileOut.write(" ")
                fileOut.write(str(y0))
                fileOut.write("\n")
                fileOut2.write(str(i))
                fileOut2.write(" ")
                fileOut2.write(str(y0))
                fileOut2.write("\n")
                y0 = y0 + h*k2
                last_n.append(y0)
                t0 = t0 + h
            if (self.inputi[0].find("_by_euleraprimorado_") != -1):
                k1 = function.subs([(t, t0), (y, y0)])
                k2 = function.subs([(t, t0+h), (y, y0 + h*k1)])
                fileOut.write(str(i))
                fileOut.write(" ")
                fileOut.write(str(y0))
                fileOut.write("\n")
                fileOut2.write(str(i))
                fileOut2.write(" ")
                fileOut2.write(str(y0))
                fileOut2.write("\n")
                y0 = y0 + (h/2)*(k1+k2)
                last_n.append(y0)
                t0 = t0 + h
            if (self.inputi[0].find("_by_runge_kutta") != -1):
                k1 = function.subs([(t, t0), (y, y0)])
                k2 = function.subs([(t, t0 + h/2), (y, y0 + ((h/2)*k1))])
                k3 = function.subs([(t, t0 + h/2), (y, y0 + ((h/2)*k2))])
                k4 = function.subs([(t, t0 + h), (y, y0 + h*k3)])
                fileOut.write(str(i))
                fileOut.write(" ")
                fileOut.write(str(y0))
                fileOut.write("\n")
                fileOut2.write(str(i))
                fileOut2.write(" ")
                fileOut2.write(str(y0))
                fileOut2.write("\n")
                y0 = y0 + (h/6)*(k1+2*k2+2*k3+k4)
                last_n.append(y0)
                t0 = t0 + h
        # Adams-Bashforth method
        for i in range(SN,n + 1):
            fileOut.write(str(i))
            fileOut.write(" ")
            fileOut.write(str(y0))
            fileOut.write(" ")
            fileOut.write(str(t0))
            fileOut.write("\n")
            fileOut2.write(str(i))
            fileOut2.write(" ")
            fileOut2.write(str(y0))
            fileOut2.write("\n")
            print(repr(y0))
            y0 += h * sum([function.subs([(t,t0 - j * h),(y,last_n[j])]) * s4[j] for j in range(SN)])
            last_n = last_n[1:]
            last_n.append(y0)
            # y0 += h * sum([last_n[j] * s5[j] for j in range(SN)])
            # last_n = last_n[1:]
            # last_n.append(function.subs([(t,t0),(y,y0)]))
            t0 = float(t0 + h)
        fileOut.close()
        fileOut2.close()





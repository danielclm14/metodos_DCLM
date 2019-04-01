# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *
from methods.euler import Euler
from methods.eulerinverso import EulerInverso
from methods.euleraprimorado import EulerAprimorado
from methods.rungekutta import RungeKutta
from methods.adambashforth import AdamBashforth

def main():
    #fileIn = open('input/input.txt', 'r')
    fileOut = open('output/saida.txt','w')
    fileOut.close()
    with open('input/input.txt', 'r') as fileIn:
        for line in fileIn:
            inputi = line
            inputi = inputi.split()
            if (inputi[0] == "euler"):
                new_method = Euler(inputi)
            if(inputi[0] == "euler_inverso"):
                new_method = EulerInverso(inputi)
            if(inputi[0] == "euler_aprimorado"):
                new_method = EulerAprimorado(inputi)
            if (inputi[0] == "runge_kutta"):
                new_method = RungeKutta(inputi)
            if (inputi[0] == "adam_bashforth_by_euler"):
                new_method = AdamBashforth(inputi)
            new_method.method()
    fileIn.close()

if __name__ == '__main__':
	main()





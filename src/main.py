# -*- coding: utf-8 -*-
from sympy import *
from mpmath import *
from methods.euler import Euler
from methods.eulerinverso import EulerInverso
from methods.euleraprimorado import EulerAprimorado
from methods.rungekutta import RungeKutta
from methods.adambashforth import AdamBashforth
from methods.adammulton import AdamMulton

def main():
    #fileIn = open('input/input.txt', 'r')
    fileOut = open('output/saida.txt','w')
    fileOut3 = open('output/saidadois.txt','w')
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
            if (inputi[0].find("adam_bashforth") != -1):
                new_method = AdamBashforth(inputi)
            if (inputi[0].find("adam_multon") != -1):
                new_method = AdamMulton(inputi)
            new_method.method()
    fileIn.close()

if __name__ == '__main__':
	main()





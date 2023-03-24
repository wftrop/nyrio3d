# -*- coding: utf-8 -*-
"""
Created on Thu Mar 23 10:56:02 2023

@author: Razer Blade
"""

def droite(A,B):
    if A == B:
        return None
    (xA , yA) = A
    (xB , yB) = B
    if xA == xB:
        return (1 , 0 , -xA)
    a = - (yB - yA)/(xB - xA)
    c = -a*xA - yA
    return (a , 1 , c)

#aX + bY + c = 0

def appartien( droite , point):
    (a , b , c ) = droite
    (xA , yA ) = point
    return a*xA + b*yA + c == 0


(a,b,c) = droite((1,2),(1,3))
print(a,b,c)
print(appartien((a,b,c),(3,7)))
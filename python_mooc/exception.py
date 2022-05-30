#!/usr/bin/env python3

def div(a, b) :
    try:
        print(a/b)
    except ZeroDivisionError:
        print("attention, division par 0")
    except TypeError:
        print("attention , il faut un entier")
    print("Continuons")

div(1,0) 
div(1,"ahdb")

def f(x):
    return(div(1,x))
    
f(5)
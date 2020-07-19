'''
Oppgave 3b
'''
import numpy as np
x, y, vx, vy, p = np.load('bfs.npy')

# regner ut kunn i indeks[10,10]
dx = (vx[10,10]-vx[10,9])/(x[10,10]-x[10,9])    # dVx/dx
d1x = (vy[10,10]-vy[10,9])/(x[10,10]-x[10,9])   # dVy/dx
dy = (vx[10,10]-vx[9,10])/(y[10,10]-y[9,10])    # dVx/dy
d1y = (vy[10,10]-vy[9,10])/(y[10,10]-y[9,10])   # dVy/dy

A = [[dx,d1x],[dy,d1y]]                         # skriver til matrise form
m = np.array(A)

print m

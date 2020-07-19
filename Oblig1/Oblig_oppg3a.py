'''
Oppgave 3a
'''
import numpy as np
import matplotlib . pyplot as plt
x, y, vx, vy, p = np.load('bfs.npy')

plt.streamplot(x, y, vx, vy)
plt.show()

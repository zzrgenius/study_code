import matplotlib.pyplot as plt
x_values = list(range(1, 1001))
y_vlaues = [x**2 for x in x_values]
plt.scatter(x_values, y_vlaues, s=1)
plt.show()
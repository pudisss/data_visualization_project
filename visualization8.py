import numpy as np 
import pandas as pd 
from matplotlib import pyplot as plt 

# The data frame
df = pd.read_csv(r"C:\Users\pudis\data science file\All csv file\covid cases.csv")
# The data frame that doesn't have the nan value
ndf = df.dropna(axis=0)

class Visualization(object):
	def bar_cases(self):
		plt.style.use("seaborn")
		# To get the data from the data frame
		date = []
		cases = []
		death = []
		col = ["date", "cases", "deaths"]
		var = [date, cases, death]
		for j in range(len(var)):
			for d in ndf[col[j]][:50]:
				var[j].append(d)
		
		# To plot a plot chart
		plt.barh(date, cases, edgecolor="black", alpha=0.45, color="r")
		plt.show()

	def bar_death(self):
		plt.style.use("seaborn")

		# To get the data from tha data frame
		date = []
		death = []
		col = ["date", "deaths"]

		var = [date, death]
		for j in range(len(var)):
			for d in ndf[col[j]]:
				var[j].append(d)
		# To plot a bar chart
		plt.barh(date, death, edgecolor="black", color="r", alpha=0.45)
		plt.show()



v = Visualization()
v.bar_death()






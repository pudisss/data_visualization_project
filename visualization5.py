import numpy as np 
import pandas as pd 
from matplotlib import pyplot as plt 
import sklearn
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split

# The data frame
df = pd.read_csv(r"C:\Users\pudis\data science file\All csv file\best seller book\bestsellers with categories.csv")
# The data frame that doesn't have the nan value
ndf = df.dropna(axis=0)

# Separate the year


print(tn)
def bar_user_rating():
	# The variable that use for fill the data from the data frame
	name = []
	rating = []
	price = []
	review = []
	author = []
	col = ["User Rating", "Price", "Reviews", "Author"]
	var = [rating, price, review, author]
	for j in range(len(var)):
		for d in ndf[col[j]][:255]:
			var[j].append(d)
	for n in ndf["Name"]:
		name.append(n)

	# To make the plot chart 
	plt.style.use("seaborn")
	plt.plot(range(len(rating)), rating, linestyle=":", linewidth=2, color="y")
	
	plt.xlabel("The amount of movies")
	plt.ylabel("The Rating")
	plt.title("The rating of the movies")
	plt.show()
def bar_rating():
	name = []
	rating = []
	col = ["Name", "User Rating"]
	var = [name, rating]
	for j in range(len(var)):
		for d in ndf[col[j]][:20]:
			var[j].append(d)
	
	# To make the bar chart
	plt.barh(name, rating, edgecolor="black", color="r", alpha=0.34)
	plt.show()




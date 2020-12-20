import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

# The data frame
df = pd.read_csv(r"C:\Users\pudis\data science file\All csv file\student_test\StudentsPerformance.csv")
# The data frame that doesn't have the nan value
ndf = df.dropna(axis=0)

# Separate the gender
m = df.loc[df["gender"] == "male"]
f = df.loc[df["gender"] == "female"]

def plot_math_score():
	math_score = []
	reading = []
	writing = []
	var = [math_score, reading, writing]
	col = ["math score", "reading score", "writing score"]
	for j in range(len(col)):
		for d in ndf[col[j]][:200]:
			var[j].append(d)
	ms = np.array(math_score)
	r = np.array(reading)
	w = np.array(writing)
	var1 = [ms, r, w]
	# The plot chart
	fig, ax = plt.subplots(len(var))
	for i in range(len(var)):
		l = [":", "-.", "--", "-"]
		c = ["r", "m", "y", "g"]
		ax[i].plot(range(len(var1[i])), var1[i], linestyle=l[i], linewidth=2, color=c[i])
	plt.legend(["math score", "reading score", "writing score"])
	plt.xlabel("The amount of students")
	plt.ylabel("The scores")
	plt.show()
	
def pie_score():
	math = []
	read = []
	writing = []
	var = [math, read,  writing]
	col = [m[["math score", "reading score", "writing score"]].sum().sum(), f[["math score", "reading score", "writing score"]].sum().sum()]

	# To make the pie chart
	color = ["r", "g"]
	plt.pie(col, labels=["Male", "Female"], shadow=True, wedgeprops={"edgecolor":"black"}, autopct="%1.1f%%", colors=color)

	plt.title("The sum of all the scores in different gender")
	plt.show()
	
def pie_test_preparation():
	plt.style.use("seaborn")
	# The variable that will be used in the making the plot chart

	ms = []
	ws = []
	var = [ms, ws]
	col = [m["test preparation course"], f["test preparation course"]]

	for j in range(len(col)):
		for d in col[j]:
			if d == "completed":
				var[j].append(d)

	out = [len(ms), len(ws)]
	# To plot a pie chart
	plt.pie(out, labels=["Male", "Female"], shadow=True, wedgeprops={"edgecolor":"black"}, autopct="%1.1f%%")
	plt.title("The completed test preparation student in different gender")
	plt.show()

pie_test_preparation()
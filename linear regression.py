import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import sklearn
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split

# The data frame 
df = pd.read_csv(r"C:\Users\pudis\data science file\All csv file\student_information\student-mat.csv", sep=";")
# The data frame that doesn't have any nan value
ndf = df.dropna(axis=0)

def bar_freetime():
    freetime = []
    score1 = []
    score2 = []
    score3 = []
    col = ["G1", "G2", "G3"] # The column in the csv file that i want to go through
    var = [score1, score2, score3]
    for j in range(len(col)):
        for d in df[col[j]][:300]:
            var[j].append(d)

    for d in df["freetime"][:300]:
        freetime.append(d)

    # To plot the chart

    hour = [n for n in range(1, 5)]

    data = []
    for j in range(len(hour)):
        data.append([])
        for d in df["freetime"][:500]:
            if hour[j] == int(d):
                for grades in df["G3"][:500]:
                    data[j].append(int(grades))
    
    c = ["r", "b", "g", "y"]
    for ind in range(len(data)):
        plt.barh(hour[ind], sum(data[ind]), edgecolor='black', color=c[ind], alpha=0.75)

    plt.xlabel("Freetime (Hour)")
    plt.ylabel("Grade (sum)")
    plt.title('The sum of the grade of the student in freetime')
    plt.show()


def bar_absences():
	absence = []
	score1 = []
	score2 = []
	score3 = []
	var = [score1, score2, score3]
	col = ["G1", "G2", "G3"]
	for i in range(len(col)):
		for d in df[col[i]][:255]:
			var[i].append(d)

	for nd in df["absences"]:
		absence.append(nd)

	nab = list(set(absence))
	data = []
	for j in range(len(nab)):
		data.append([])
		for nd in df["absences"][:500]:
			if nab[j] == nd:
				for ind in df["G3"][:500]:
					data[j].append(ind)
	# To plot the bar chart
	color = np.random.choice(["r", "b", "m", "y", "g"], 34)
	for n in range(len(data)):
		plt.barh(nab[n], sum(data[n]), edgecolor="black", color=color[n])

	plt.xlabel("Absences(number)")
	plt.ylabel("Grades")
	plt.show()


def pie_gender():
	m = df.loc[df["sex"] == "M"]
	f = df.loc[df["sex"] == "F"]

	gradem = []
	gradef = []
	

	col = ["G1", "G2", "G3"]
	for i in range(len(col)):
		gradem.append([])
		gradef.append([])
		for dm in m[col[i]]:
			

			gradem[i].append(int(dm))
		for fd in f[col[i]]:
			
			gradef[i].append(int(fd))
	out = [sum(x) for x in gradem]
	out1 = [sum(x) for x in gradef]
	
	# To plot the pie chart
	data = [sum(out), sum(out1)]

	l = ["Male", "Female"] # The label

	plt.pie(data, labels=l, wedgeprops={"edgecolor":"black"}, shadow=True, autopct="%1.1f%%", colors=["r", "m"])
	plt.title("The score of each gender")
	plt.show()


import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

# The data frame
df = pd.read_csv(r"C:\Users\pudis\data science file\All csv file\suicide_rating\master.csv")

# Separate the gender
f = df.loc[df["sex"] == "female"]
m = df.loc[df["sex"] == "male"]
# Separate the country
a = df.loc[df["country"] == "Albania"]
u = df.loc[df["country"] == "Uzbekistan"]
ab = df.loc[df["country"] == "Antigua and Barbuda"]
ag = df.loc[df["country"] == "Argentina"]
am = df.loc[df["country"] == "Armenia"]
ar = df.loc[df["country"] == "Aruba"]
at = df.loc[df["country"] == "Australia"]
ast = df.loc[df["country"] == "Austria"]
az = df.loc[df["country"] == "Azerbaijan"]
b = df.loc[df["country"] == "Bahamas"]
br = df.loc[df["country"] == "Bahrain"]
bb = df.loc[df["country"] == "Barbados"]
bl = df.loc[df["country"] == "Belarus"]
bg = df.loc[df["country"] == "Belgium"]
blz = df.loc[df["country"] == "Belize"]
bra = df.loc[df["country"] == "Brazil"]
bgr = df.loc[df["country"] == "Bulgaria"]
c = df.loc[df["country"] == "Canada"]
cl = df.loc[df["country"] == "Chile"]
clb = df.loc[df["country"] == "Colombia"]

# The code below is to plot some data visualization

def most_suicides():
	v1 = []; v2 = []; v3 = []; v4 = []; v5 = []; v6 = []; v7 = []; v8 = []; v9 = []; v10 = []; v11 = []; v12 = []; v13 = []; v14 = []; v15 = []; v16 = []; v17 = []; v18 = []; v19 = []; v20 = []
	
	col = [len(a), len(u), len(ab), len(ag), len(am), len(ar), len(at), len(ast), len(az), len(b), len(br), len(bb)]
	
	plt.pie(col, labels=l, shadow=True, wedgeprops={"edgecolor":"black"}, autopct="%1.1f%%", startangle=90)
	plt.show()

def plot_suicideno():
	# The variable of the function
	v1 = []; v2 = []; v3 = []; v4 = []; v5 = []; v6 = []; v7 = []; v8 = []; v9 = []; v10 = []; v11 = []; v12 = []
	var = [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12]
	col = [a["suicides_no"], u["suicides_no"], ab["suicides_no"], ag["suicides_no"], am["suicides_no"], ar["suicides_no"], at["suicides_no"], ast["suicides_no"], az["suicides_no"], b["suicides_no"], br["suicides_no"], bb["suicides_no"]]
	for i in range(len(col)):
		for d in col[i][:255]:
			var[i].append(d)
	
	fig, ax = plt.subplots(len(var))
	
	for n in range(len(var)):
		l = np.random.choice([":", "-.", "--", "-"], 12)
		c = np.random.choice(["m", "y", "r", "g", "b"], 12)
		ax[n].plot(range(len(var[n])), var[n], linestyle=l[n], color=c[n], linewidth=2)
	plt.show()


print()





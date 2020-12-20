import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import pymysql

# To connect to the data base and get the data from the data base
con = pymysql.connect(host="localhost", user="root", passwd="kongpudis", db="pokemon_database", charset="utf8")
cs = con.cursor()

data = cs.execute("SELECT * FROM pokemon_data")

fv = cs.fetchall()
name = []
Type1 = []
Type2 = []
hp = []
attack = []
defense = []
var = [name, Type1, Type2, hp, attack, defense]
for f in fv:
	for i in range(len(var)):
		var[i].append(f[i])

con.commit()
con.close()
cs.close()


def bar_hp():
	plt.barh(name[:50], hp[:50], edgecolor="black", color="r", alpha=0.45, left=2)
	plt.xlabel("Name")
	plt.ylabel("Health")

	plt.title("The health of each pokemon")
	plt.show()

def bar_attack():
	plt.barh(name[:50], attack[:50], edgecolor="black", color="m", alpha=0.56, left=2)
	plt.show()
def bar_defense():
	plt.barh(name[:50], defense[:50], edgecolor="black", color="y", alpha=0.67, left=2)
	plt.show()


bar_defense()
import pymysql
import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

# The data frame 
df = pd.read_csv(r"C:\Users\pudis\data science file\All csv file\appstore application\AppleStore.csv")
# The first thing is to connect to the data base and insert the data from a csv file to the data base
con = pymysql.connect(host="localhost", user="root", passwd="kongpudis", db="Appstore_database", charset="utf8")
cs = con.cursor()

cs.execute("DROP TABLE Appstore_data")
cs.execute('CREATE TABLE Appstore_data (ID INT(255), Price INT(255), User_rating INT(255))')
# To get the data from the csv file
Id = []
price = []
rating = []
var = [Id, price, rating]
col = ["id", "price", "user_rating"]

for j in range(len(col)):
	for d in df[col[j]][:255]:
		var[j].append(d)


# To insert the data to the data base
for ind in range(len(price)):
	string = """INSERT INTO Appstore_data (ID, Price, User_rating) VALUES(%d, %f,  %f)""" %(Id[ind], price[ind], rating[ind])
	cs.execute(string)
con.commit()
con.close()


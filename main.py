import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import os
import json
import csv
import sklearn
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split

class EV(object):
    # The read_csv function is not ready to use yet it can use when the csv file have only 3 columns but I am going to develop this to be interactive with the use

    def read_csv(self, filepath):
        """

        :param filepath: The filepath
        :return: Data frame

        """

        # To get the filename


        
        with open(r"{}".format(filepath), "r") as file:
            data = csv.reader(file)
            # The code below is to get all of the data from the csv file and some variable that will be filled with data from the csv file

            
            nrdata = []
            key = []
            datas = []

            for d in data:
                nrdata.append(d)

            for j in range(len(nrdata)):
                datas.append([])
                for i in range(len(nrdata[j])):
                    if j == 0:
                        key.append(nrdata[0][i])
                    else:

                        datas[j].append(nrdata[j][i])
            out = []

            for n in range(len(key)):
                out.append([])

            for j in range(len(datas)):
                for i in range(len(datas[j])):
                    out[i].append(datas[j][i])
            
            dic = {}
            for x in range(len(out)):
                dic.setdefault(key[x], out[x])

            # The data frame
            df = pd.DataFrame(data=dic)

            print(df)

    def listdir(self, foldername):
        """

        :param foldername: The foldername that the users wanted to return the file or folder in the foldername
        :return: a list of file or folder in the foldername
        """
        default = os.path.join(os.environ.get('HOMEDRIVE'), r"\Users")

        os.chdir(r"{}".format(default))
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        for f in file_def:
            if f in def_file:
                def_file.remove(f)
        # The unreal filepath
        unfilepath = []

        for df in def_file:
            filepath = os.path.join(default, df)
            unfilepath.append(filepath)
        listdir = []
        for path, folder, file in os.walk(r"{}".format(unfilepath[0])):
            if foldername in folder:
                filepath = os.path.join(path, foldername)

                os.chdir(r"{}".format(filepath))

                listdir.append(os.listdir())

    def read_txt(self, pathfile):
        """

        :param pathfile: The path of the file
        :return: The data in that text file
        """
        with open(r"{}".format(pathfile), "r+") as file:
            data = file.readlines()

            print(data)
    def read_json(self, pathfile):
        """

        :param pathfile: The path of the file
        :return: The data in that json file
        """
        with open(r"{}".format(pathfile), "r+") as file:
            data = json.load(file)

            print(data)
    def plot_int(self, filename, columnname, decoration, color, linestyle, linewidth, amountdata):
        """

        :param filename: Csv file
        :param columnname: Column have to be integer
        :param decoration: True or False
        :param color: Color
        :param linestyle: Linestyle
        :param linewidth: integer
        :param amountdata: integer
        :return: plot chart
        """
        default = os.path.join(os.environ.get("HOMEDRIVE"), r"\Users")
        # To change the current working folder or directory
        os.chdir(r"{}".format(default))

        # To get default folder in the default file path
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        for fd in file_def:
            if fd in def_file:
                def_file.remove(fd)

        # To get the unreal filepath

        unfilepath = []
        for d in def_file:
            filepath = os.path.join(default, d)
            unfilepath.append(filepath)
        # The real file path
        rfilepath = []
        for path, folder, file in os.walk(r"{}".format(unfilepath[0])):
            if filename in file:
                filepath = os.path.join(path, filename)
                rfilepath.append(filepath)

        # The data frame

        df = pd.read_csv(r"{}".format(rfilepath[0]))
        integer = 44837 # The variable that will be used for checking the data type
        lst = []

        var = []
        if type(lst) == type(columnname):
            for i in range(len(columnname)):
                var.append([])
                for d in df[columnname[i]][:amountdata]:
                    var[i].append(int(d))




        # To plot the data in a plot chart
        if decoration == True:
            if len(columnname) == 1:
                plt.style.use("seaborn")
                plt.plot(range(len(var)), var, linestyle=linestyle, linewidth=linewidth, color=color)
                plt.show()
            elif len(columnname) >= 1:
                plt.style.use("seaborn")
                fig, ax = plt.subplots(len(var))
                for j in range(len(ax)):
                    ax[j].plot(range(len(var[j])), var[j], linestyle=linestyle, linewidth=linewidth, color=color)
                plt.show()

        elif decoration == False:
            if len(columnname) == 1:
                plt.grid(True)
                plt.plot(range(len(var)), var)
                plt.show()
            elif len(columnname) >= 1:
                fig, ax = plt.subplots(len(var))

                for j in range(len(ax)):
                    plt.plot(range(len(var[j])), var[j])
                plt.show()
    def plot_float(self, filename, columnname, decoration, color, linestyle, linewidth, amountdata):
        """

        :param filename: File name
        :param columnname: Column that have to be integer of float
        :param decoration: Boolean
        :param color: color
        :param linestyle: linestyle
        :param linewidth: integer
        :param amountdata: integer
        :return: plot chart
        """
        default = os.path.join(os.environ.get("HOMEDRIVE"), r"\Users")
        # To change the current working folder or directory
        os.chdir(r"{}".format(default))

        # To get default folder in the default file path
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        for fd in file_def:
            if fd in def_file:
                def_file.remove(fd)

        # To get the unreal filepath

        unfilepath = []
        for d in def_file:
            filepath = os.path.join(default, d)
            unfilepath.append(filepath)
        # The real file path
        rfilepath = []
        for path, folder, file in os.walk(r"{}".format(unfilepath[0])):
            if filename in file:
                filepath = os.path.join(path, filename)
                rfilepath.append(filepath)
        # The data frame
        df = pd.read_csv(r"{}".format(rfilepath[0]))
        # The data frame that doesn't have the nan value
        ndf = df.dropna(axis=0)
        # The variable that will be used check the data type
        lst = []  # This variable is used to check the type of the data
        data = []
        if type(lst) == type(columnname):
            for j in range(len(columnname)):
                data.append([])
                for d in ndf[columnname[j]][:amountdata]:
                    data[j].append(float(d))

        elif type(lst) != type(columnname):
            for d in ndf[columnname][:amountdata]:
                data.append(float(d))

        # To plot the plot chart by the decoration and the length of the list data
        if decoration == True:
            if len(data) == 1:
                plt.style.use("seaborn")
                plt.plot(range(len(data)), data, linestyle=linestyle, linewidth=linewidth, color=color)
                plt.show()
            elif len(data) >= 1:
                plt.style.use("seaborn")
                fig, ax = plt.subplots(len(data))
                for j in range(len(ax)):
                    ax[j].plot(range(len(data[j])), data[j], linestyle=linestyle[j], linewidth=linewidth[j], color=color[j])
                plt.show()
        elif decoration == False:
            if len(data) == 1:
                plt.plot(range(len(data)), data)
                plt.grid(True, linestyle="--", linewidth=1) # The default setting
                plt.show()
            elif len(data) >= 1:
                plt.grid(True)
                fig, ax = plt.subplots(len(data))
                for i in range(len(ax)):
                    plt.plot(range(len(data[i])), data[i])
                plt.show()
    def bar_int(self, filename, columnname, decoration, color, alpha, amountdata):
        """

        :param filename: The csv file that was in the user computer
        :param columnname: string or list
        :param decoration: Boolean
        :param color: string
        :param alpha: float
        :return:
        """
        default = os.path.join(os.environ.get("HOMEDRIVE"), r"\Users")
        # To change the current working folder or directory
        os.chdir(r"{}".format(default))

        # To get default folder in the default file path
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        for fd in file_def:
            if fd in def_file:
                def_file.remove(fd)

        # To get the unreal filepath

        unfilepath = []
        for d in def_file:
            filepath = os.path.join(default, d)
            unfilepath.append(filepath)
        # The real file path
        rfilepath = []
        for path, folder, file in os.walk(r"{}".format(unfilepath[0])):
            if filename in file:
                filepath = os.path.join(path, filename)
                rfilepath.append(filepath)
        # The data frame
        df = pd.read_csv(r"{}".format(rfilepath[0]))
        # The data frame that doesn't have the nan value
        ndf = df.dropna(axis=0)

        # The variable that will be used for checking the data types or the data that will be used to fill the data from the data frame
        integer = 49
        lst = []
        data = []
        # To check that if the name of the column is a list or a string
        if type(lst) == type(columnname):
            for j in range(len(columnname)):
                data.append([])
                for d in ndf[columnname[j]][:amountdata]:
                    data[j].append(d)
        elif type(lst) != type(columnname):
            for d in ndf[columnname][:amountdata]:
                data.append(d)
        # To get the filename by using loops and the variable below is use in this situation
        name = []
        typefile = [".csv", ".json", ".png", ".jpg", ".html"]
        for t in typefile:
            if filename.endswith(t):
                names = filename.rstrip(t)
                numbers = [z for z in range(10)]
                for n in numbers:
                    if str(n) in names:
                        newname = names.strip(str(n))
                        name.append(newname)
        
        # To get the data from the data frame

        lst = []
        data = []
        if type(lst) == type(columnname):
            for j in range(len(columnname)):
                data.append([])
                for d in ndf[columnname[j]][:amountdata]:
                    data[j].append(d)
        elif type(lst) != type(columnname):
            for d in ndf[columnname][:amountdata]:
                data.append(d)

        # To make the bar chart but before we do that we have to check that the user wants to decorate the chart or not
        if decoration == True:
            if len(data) >= 1:
                plt.style.use("seaborn")
                fig, ax = plt.subplots(len(data))
                for j in range(len(ax)):
                    ax[j].bar(range(len(data[j])), data[j], color=color[j],  alpha=alpha, edgecolor="black")
                plt.xlabel("The amount of {}".format(name[0]))
                plt.ylabel("The {} of {}".format(columnname, name[0]))
                plt.show()
            elif len(data) == 1:
                plt.grid(True, linestyle=":", linewidth=2) # The argument is default
                plt.bar(range(len(data)), data, color=color, alpha=alpha, edgecolor='black')
                plt.xlabel("The amount of {}".format(name[0]))
                plt.show()
        elif decoration == False:
            if len(data) >= 1:
                fig, ax = plt.subplots(len(data))
                for i in range(len(data)):
                    ax[i].plot(range(len(data[i])), data[i], alpha=alpha, color=color[i], edegcolor="black")
                plt.show()
            elif len(data) == 1:
                plt.grid(True, linestyle=":", linewidth=2) # The argument is default
                plt.bar(range(len(data)), data, color=color, alpha=alpha, edgecolor="black")
                plt.show()
    def pie_int(self, filename, columnname, decoration, shadow, color, amountdata):
        """
        :param filename: File name
        :param columnname: columnname in the csv file
        :param decoration: Boolean
        :param shadow: Boolean
        :param color: a list if the columnname is a list if not a string
        :param amountdata: integer

        """
        default = os.path.join(os.environ.get("HOMEDRIVE"), r"\Users")

        # To change the current working directory
        os.chdir(r"{}".format(default))

        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        
        for f in file_def:
            if f in def_file:
                def_file.remove(f)

        nrfilepath = os.path.join(default, def_file[0])

        # To loop through all of the file and folder in the users computer
        filepath = []
        for path, folder, file in os.walk(r"{}".format(nrfilepath)):
            if filename in file:
                nfilepath = os.path.join(path, filename)
                filepath.append(nfilepath)

        # The data frame
        df = pd.read_csv(r"{}".format(filepath[0]))

        # To get the from the data frame but we have to check first if the columnname argument is a list or string
        lst = []
        data = []
        if type(lst) == type(columnname):
            for j in range(len(columnname)):
                data.append([])
                for d in df[columnname[j]][:amountdata]:
                    data[j].append(d)
        elif type(lst) != type(columnname):
            for d in df[columnname][:amountdata]:
                data.append(d)

        # To check that the data that came from the data frame is a list or not
        out = []
        if len(data) >= 1:
            for ind in range(len(data)):
                out.append(sum(data[ind]))
        elif len(data) == 1:
            out.append(data)

        # To plot the pie chart
        if decoration == True:
            if len(out) >= 1:
                plt.style.use("seaborn")
                plt.pie(out, labels=columnname, shadow=True, wedgeprops={"edgecolor":"black"}, autopct="%1.1f%%")
                
                plt.show()
            
        elif decoration == False:
            if len(out) >= 1:
                plt.grid(True, linestyle="-.", linewidth=2)
                plt.pie(out, label=columnname, autopct="%1.1f%%")
                plt.show()
    def linear(self, filename, columnname,  predictcolumn):
        """
        :param filename: Filename
        :param columnname: List
        """
        default = os.path.join(os.environ.get("HOMEDRIVE"), r"\Users")

        # To change the current working directory
        os.chdir(r"{}".format(default))

        # To get the default file in the default file
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']

        # To delete the file that isn't the default file
        for f in file_def:
            if f in def_file:
                def_file.remove(f)

        nrfile = os.path.join(default, def_file[0])
        # To loop through all of the folder and file in the user computer
        filepath = []
        for path, folder, file in os.walk(r"{}".format(nrfile)):
            if filename in file:
                rfilename = os.path.join(path, filename)
                filepath.append(rfilename)

        # The data frame
        df = pd.read_csv(r"{}".format(filepath[0]))

        # The data
        data = df[columnname]

        predict = predictcolumn

        # The x and y data
        x = np.array(data.drop(predict, 1))
        y = np.array(data[predict])

        # The training and testing data
        x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.1)

        # The linear model
        linear = LinearRegression()
        linear.fit(x_train, y_train)

        # The predict variable

        prediction = linear.predict(x_test)

        for j in range(len(prediction)):
            if prediction[j] == y_test[j]:
                print(prediction[j], x_test[j], y_test[j], "Yes")

            elif prediction[j] != y_test[j]:
                print(prediction[j], x_test[j], y_test[j], "No")







    def scatter_int(self, filename, columnname, decoration, color, alpha, amountdata):
        """

        :param filename: Path to the file
        :param columnname: columnname
        :param decoration: Boolean
        :param color: Color of the circle in the scatter plot
        :param alpha: alpha
        :param amountdata: integer
        :return: scatter chart
        """
        default = os.path.join(os.environ.get("HOMEDRIVE"), r"\Users")
        # To change the current working folder or directory
        os.chdir(r"{}".format(default))

        # To get default folder in the default file path
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        for fd in file_def:
            if fd in def_file:
                def_file.remove(fd)

        # To get the unreal filepath

        unfilepath = []
        for d in def_file:
            filepath = os.path.join(default, d)
            unfilepath.append(filepath)
        # The real file path
        rfilepath = []
        for path, folder, file in os.walk(r"{}".format(unfilepath[0])):
            if filename in file:
                filepath = os.path.join(path, filename)
                rfilepath.append(filepath)

        # The data frame that will use the filepath that the code above doing
        df = pd.read_csv(r"{}".format(rfilepath[0]))
        # The data frame that doesn't have the nan value
        ndf = df.dropna(axis=0)

        # To get the data in the specific column
        var = [] # The variable name var because we don't know what the user want
        integer = 34567
        lst = []
        data = []
        if type(lst) == type(columnname):
            for i in range(len(columnname)):
                data.append([])
                for d in ndf[columnname[i]][:amountdata]:
                    data[i].append(d)
        elif type(lst) != type(columnname):
            for d in ndf[columnname][:amountdata]:
                data.append(d)
        # To get the name of the file by don't have the type of file
        typefile = [".csv", ".json", ".html"]
        name = []
        for i in range(len(typefile)):
            if filename.endswith(typefile[i]):
                nrfilename = filename.rstrip(typefile[i])
                integer = [x for x in range(0, 10)]
                for n in integer:
                    if str(n) in filename:
                        rfilename = nrfilename.strip(str(n))

                        name.append(rfilename)
        # To get the fiilename 
        typefile = [".csv", ".json", ".html", ".png"]
        name = []
        for t in typefile:
            if t in filename:
                names = filename.rstrip(t)
                numbers = [x for x in range(10)]
                for n in numbers:
                    if str(n) in names:
                        rname = names.strip(str(n))
                        name.append(rname)

        # To check that the users want to decorate the scatter chart
        if decoration == True:
            if len(columnname) == 1:
                plt.style.use("seaborn")
                plt.scatter(range(len(data)), data, color=color, alpha=alpha, edgecolor="black")
                cbar = plt.colorbar()
                cbar.set_label("Satisfaction")
                plt.xlabel("The amount of {}".format(name[0]))
                plt.ylabel("The {} of {}".format(columnname, name[0]))
                plt.show()
            elif len(columnname) >= 1:
                plt.style.use("seaborn")
                colors = np.random.choice(["m", "y", "g", "r", "b"], len(columnname))
                for j in range(len(columnname)):
                    plt.scatter(range(len(data[j])), data[j], color=colors[j], edgecolor="black", alpha=alpha)

                cbar = plt.colorbar()
                cbar.set_label("Satisfaction")
                plt.show()

        elif decoration == False:
            if len(columnname) == 1:
                plt.grid(True, linestyle="--", linewidth=1)

                plt.scatter(range(len(data)), data)
                plt.show()
            elif len(columnname) >= 1:
                plt.grid(True, linestyle="--", linewidth=1)
                for j in range(len(columnname)):
                    plt.scatter(range(len(data[j])), data[j])
                plt.xlabel("The amount of {}".format(name[0]))
                plt.ylabel("The {} of {}".format(columnname, name[0]))
                plt.show()

# The new class that will handle all of the 3d chart
class TRDEV(object):

    def plot_int(self, filename, columnname, decoration, linestyle, linewidth, color, amountdata):
        """

        :param filename: Name of the file
        :param columnname: name of the column
        :param decoration: Boolean True or False
        :param linestyle: It can be a list or string
        :param linewidth: It can be a list or string
        :param color: It can be a list or string
        :param amountdata: integer
        :return: 3d chart
        """
        # To get the default file path
        default = os.path.join(os.environ.get('HOMEDRIVE'), r"\Users")

        # To change the current working directory

        os.chdir(r"{}".format(default))

        # To get the default folder in C:\Users
        def_file = os.listdir()
        file_def = ['All Users', 'Default', 'Default User', 'desktop.ini', 'Public']
        for f in file_def:
            if f in def_file:
                def_file.remove(f)

        unfilepath = os.path.join(default, def_file[0])

        # To loop through all of the files and folders in the user computer
        rfilepath = []
        for path, folder, file in os.walk(r"{}".format(unfilepath)):
            if filename in file:
                filepath = os.path.join(path, filename)
                rfilepath.append(filepath)
        # To make the data frame by using the filepath from the variable called rfilepath
        df = pd.read_csv(r"{}".format(rfilepath[0]))
        # The data frame that doesn't have the nan value

        ndf = df.dropna(axis=0)
        # The variable that will use to fill the data from the Series to the variable list
        integer = 9384
        lst = []
        data = []
        # To get the data from the Series
        if type(columnname) == type(lst):
            for j in range(len(columnname)):
                data.append([])
                for d in ndf[columnname[j]][:amountdata]:
                    data[j].append(int(d))
        elif type(columnname) != type(lst):
            for d in ndf[columnname][:amountdata]:
                data.append(int(d))

        # To check if the user wants to decorate the chart or not
        if decoration == True:
            if len(data) >= 1:
                fig = plt.figure()
                ax = plt.axes(projection="3d")
                for j in range(len(data)):
                    ax.plot3D(range(len(data[j])), data[j], linestyle=linestyle[j], color=color[j], linewidth=linewidth[j])
                plt.show()
            elif len(data) == 1:
                fig = plt.figure()
                ax = plt.axes(projection="3d")
                ax.plot3D(range(len(data)), data, linestyle=linestyle, color=color, linewidth=linewidth)
                plt.show()
        elif decoration == False:
            if len(data) >= 1:
                fig = plt.figure()
                ax = plt.axes(projection="3d")
                for i in range(len(data)):
                    ax.plot3D(range(len(data[i])), data[i], linestyle=linestyle[i], linewidth=linewidth[i], color=color[i])
                    plt.show()
            elif len(data) == 1:
                fig = plt.figure()
                ax = plt.axes(projection="3d")
                ax.plot3D(range(len(data)), data, linestyle=linestyle, linewidth=linewidth, color=color)
                plt.show()
        





# The code here is to call the module or class
e = TRDEV()
ew = EV()

ew.linear("Pokemon1.csv", ["Attack", "Speed", "Sp. Atk"], "Sp. Atk")
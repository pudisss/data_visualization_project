import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import os
import json
import csv

class EV(object):
    # The read_csv function is not ready to use yet it can use when the csv file have only 3 columns but I am going to develop this to be interactive with the use

    def read_csv(self, filepath):
        """

        :param filepath: File path
        :return: data frame
        :var: Useful
        """
        with open(r"{}".format(filepath), "r") as file:
            data = csv.reader(file)

            rdata = []
            for l in data:
                rdata.append(l)
            dic = {}
            length = len(rdata[0])
            v1 = []; v2 = []; v3 = []
            var = [v1, v2, v3]
            for n in range(length):
                for d in rdata:
                    var[n].append(d[n])

            for j in range(len(rdata[0])):
                dic.setdefault(rdata[0][j], var[j])
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
                    ax[j].plot(range(len(data[j])), data[j], linestyle=linestyle, linewidth=linewidth, color=color)
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
                    data[j].append(int(d))
        elif type(lst) != type(columnname):
            for d in ndf[columnname][:amountdata]:
                data.append(int(d))

        # To check that the users want to decorate the chart or not or have to check that length of the variable data is more than or 1
        if decoration == True:
            if len(data) >= 1:
                plt.style.use("seaborn")
                fig, ax = plt.subplots(len(data))
                for i in range(len(ax)):
                    ax[i].bar(range(len(data[i])), data[i], alpha=alpha, color=color[i], width=1, edgecolor="black")
                plt.show()

            elif len(data) == 1:
                plt.bar(range(len(data)), data, alpha=alpha, color=color, width=1, edgecolor="black")
                plt.show()
        elif decoration == False:
            if len(data) >= 1:
                pass
            elif len(data) == 1:
                pass




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

        # To check that the users want to decorate the scatter chart
        if decoration == True:
            if len(columnname) == 1:
                plt.style.use("seaborn")
                plt.scatter(range(len(data)), data, color=color, alpha=alpha, edgecolor="black")
                cbar = plt.colorbar()
                cbar.set_label("Satisfaction")
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
                plt.show()



# The code here is to call the module or class
e = EV()
e.bar_int("Pokemon1.csv", ["Attack", "Defense"], True, ["m", "y"], 0.48, 500)
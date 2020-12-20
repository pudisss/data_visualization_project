import numpy as np 
import random

class Node():
	def __init__(self, value=None):
		self.value = value
		self.left = None
		self.right = None

class Binary(object):
	def __init__(self):
		self.root = None
	def insert(self, value):
		if self.root == None:
			self.root = Node(value)
		else:
			self._insert(value, self.root)
	def _insert(self, value, cur_node):
		if value <= cur_node.value:
			if cur_node.left == None:
				cur_node.left = Node(value)
			else:
				self._insert(value, cur_node.left)
		elif value >= cur_node.value:
			if cur_node.right == None:
				cur_node.right = Node(value)
			else:
				self._insert(value, cur_node.right)
	def print_tree(self):
		if self.root != None:
			self._print_tree(self.root)
	def _print_tree(self, cur_node):
		if cur_node != None:
			self._print_tree(cur_node.left)
			print(str(cur_node.value))
			self._print_tree(cur_node.right)

b = Binary()
def fill_tree():
	num = np.random.uniform(0, 10000, 10000)

	for j in range(len(num)):
		b.insert(num[j])

fill_tree()
b.print_tree()

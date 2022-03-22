import random
import textwrap
from random import choice
import sys
sys.setrecursionlimit(2000)

def getsequence(filename, length):
  bases=["A","G","C","T"]
  sequence=""
  for i in range(length):
    sequence+=choice(bases)
  output = filename + ".seq"
  my_file=open(output, "w")
  my_file.write(sequence)
  my_file.close()
  return sequence 


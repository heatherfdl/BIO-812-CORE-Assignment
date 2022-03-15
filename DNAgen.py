#Python - DNAgen.py
#A: script that will generate FASTA file containing randomly generated sequences. 
  #Includes:
    #custom function with parameters for FileName and Nb
    #text file "FileName.seq" that will store random DNA sequence
    #generate 1 sequence with Nb base pairs in length (randomly chosen, equal probability)
import random
import ryr
import textwrap

#Define length of sequence
length=100
#supply list of nucleotides
bases=["A","G","C","T"]
print(bases)

#Generate a sequence
from random import choice
  #create empty sequence
  sequence=""
  #randomly select base and add to sequence(repeat 100 times for length=100)
  for i in range(length):
    base=choice(bases)
    sequence+=base
print(sequence)

#create function to generate sequences
def getsequences(length):
  sequence=""
  for count in range(length):
    sequence+=choice(bases)
  return sequence
getsequences(length)
#where "getsequences" is the function name

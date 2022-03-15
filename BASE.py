#part B - BASE.py
#needs to include
  #1. custom function with parameter filename which allows user to define
  #name of file to be processed
  #2. open the file FileName.seq
  #3. Count number of each base
  #4. output to screen 4 numbers corresponding to A, G, C, then T, seperatating
  #each by ","
  #5. output file will be FileName.count
  
#Open file using function "openseq":
def openseq ():
  dnatext=open("FASTAseq.seq","r")
  print(dnatext.read())
openseq()

#Count number of each base separated by , in order of A, G ,C, T:

for i in openseq():
  def number_of_bases():
    comma = ","
    numberofbases=str(string.count('A')) + comma + str(string.count('G')) + comma + str(string.count('C')) + comma + str(string.count('T'))
  print(numberofbases)
number_of_bases()


#output file as FileName.count
#define path and FileName
directory="/Users/heather/Desktop/Masters/BIOL 812/BIO-812-CORE-Assignment"
filename= input("Enter file name: ")
filepath = directory + filename + ".count"
filepath.close()





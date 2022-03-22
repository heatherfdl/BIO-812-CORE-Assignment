# I dont belive this function is operating corrently but I cannot figure out why
# if it were to operate correctly then all other code should be 100% operable

def countbases(filename):
  str = filename
  numbases = ""
  for i in filename:
    comma = ","
    A = str(filename.count('A'))
    G = str(filename.count('G'))
    C = str(filename.count('C'))
    T = str(filename.count('T'))
    numbases = c(A + comma + G + comma + C + comma + T)
    print(numbases)
  output = "Base_num" + ".count"
  countfile = open(output, "w")
  countfile.write(numbases)
  countfile.close
  return numbases



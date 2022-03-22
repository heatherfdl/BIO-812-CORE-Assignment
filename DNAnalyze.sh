#!/bin/bash
echo Generating DNA sequences ...


#This works and outputs files into BIO 812 CORE Assignment folder
for i in $(seq -f %03g 1 100)
do
  filename="DNAsequence$i"
  python -c "import DNAgen;DNAgen.getsequence('$filename', 1000)"
done

#Count the number of bases in each file
echo Counting bases ...
for name in.?#.seq;
do
  filename=$(echo${filename:2:9})
  python -c "import BASEV2;BASEV2.countbases('$filename')" #this function doesnt seem to work but I cannot figure out why 
done


#Combine files into single csv (if previous funtion worked this should operate normally)
echo Concatenating files together...
for countfile in ./*count;
do
  cat $countfile >> input.csv
done
  

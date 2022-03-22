#!/bin/bash
echo Generating DNA sequences ...

for i in $(seq -f %03g 1 5)
do
  filename="DNAsequence$i"
  python -c "import DNAgenforbash;DNAgenforbash.getsequence('$filename', 1000)"
done

echo Contetenating files into single csv with base proportions...

  
  cat DNAsequence*.seq > input.csv


 
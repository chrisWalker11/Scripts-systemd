#!/bin/bash
echo "what number execrise are you on?"
read a

if ((a < 10))
then
  mkdir -p ./ex0$a
else
  mkdir -p ./ex$a
fi

echo "what is the program name?"
read b
vim ./ex$a/$b.java
cd ./ex$a
## remember to . ./

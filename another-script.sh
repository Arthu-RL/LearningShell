if [ ! -f arrays_table.csv ]
then
	csv_file=https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/M3/L2/arrays_table.csv
	wget $csv_file
fi

cat arrays_table.csv

column_0=($(cut -d "," -f 1 arrays_table.csv))
column_1=($(cut -d "," -f 2 arrays_table.csv))
column_2=($(cut -d "," -f 3 arrays_table.csv))

echo "Displaying the second column:"
echo "${column_1[@]}"

column_3=("column_3")

nlines=$(cat arrays_table.csv | wc -l)
echo "There are $nlines lines in the file"

for ((i=1; i<$nlines; i++)); do
  column_3[$i]=$((column_2[$i] - column_1[$i]))
done
echo "${column_3[@]}"

echo "${column_3[0]}" > column_3.txt
for ((i=1; i<nlines; i++)); do
  echo "${column_3[$i]}" >> column_3.txt
done
paste -d "," arrays_table.csv column_3.txt > report.csv
# Parsing & Text Processing
# Let's say you have a text file named data.txt with the following content:
# John Doe|25|Engineer
# Jane Smith|30|Designer
# Michael Johnson|28|Manager
# And you want to parse and process this data using a shell script:

#!/bin/bash
# Read the text file line by line
while IFS='|' read -r name age profession; do
 echo "Name: $name"
 echo "Age: $age"
 echo "Profession: $profession"
 echo "---"
done < data.txt



# Explanation:
# 1. Shebang (#!/bin/bash): Specifies the shell to be used for interpreting the script.
# 2. while Loop: Reads the text file line by line using the read command. The IFS='|' sets 
# the input field separator to '|' so that the line is split into fields based on the '|' 
# character.
# 3. read -r name age profession: Reads the fields from each line and assigns them to 
# the variables name, age, and profession.
# 4. Display Information: Displays the extracted information using echo.
# 5. < data.txt: Redirects the content of data.txt to the while loop's input.
# When you run the script, it will output:
# Name: John Doe
# Age: 25
# Profession: Engineer
# ---
# Name: Jane Smith
# Age: 30
# Profession: Designer
# ---
# Name: Michael Johnson
# Age: 28
# Profession: Manager
# ---

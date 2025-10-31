Basic bash script, allows user to select a key and a progression in that key and outputs the progression
Planned updates: 
1. More Keys
2. More progressions
3. interval suggestions
4. Alternate chord suggestions

If you want to make the script executable system wide make a directroy in /usr/local/share/ and copy the script and majorKeys.txt text file directory to 
/usr/local/share/<whatever_directory> and chmod +x them then
make a file in /usr/local/bin and name it whatever you want to execute the script with and enter:
#!/bin/bash
/usr/local/share/<your_directory>/majorKeys.sh "$@"
chmod +x that and the script should now be executable system wide with whatever you named the file in /usr/local/bin

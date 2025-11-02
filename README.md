Basic bash script, allows user to select a key and a progression in that key and outputs the progression.
Requires https://github.com/charmbracelet/gum install w/ sudo yum install gum

I added scales, they aren't wrong but not really usefull. Ill be adding another gum choose to select a scale that will have options for
tonic note, key, mode, and diminished (idk what that last one really is other than the 7th of a given key but it'll be there soon...:))

Planned updates: 
1. More Keys
2. More progressions
3. interval suggestions
4. Alternate chord suggestions
5. modes...maybe

If you want to make the script executable system wide make a directroy in /usr/local/share/ and copy the script and majorKeys.txt text file directory to 
/usr/local/share/<whatever_directory> and chmod +x them then
make a file in /usr/local/bin and name it whatever you want to execute the script with and enter:
#!/bin/bash
/usr/local/share/<your_directory>/majorKeys.sh "$@"
chmod +x that and the script should now be executable system wide with whatever you named the file in /usr/local/bin

# Script to fetch the third most CPU & Memory consuming process
To fetch the third most CPU & Memory consuming process run the shell script as follows and it would write the information in a new file called as process_details.txt

#### Syntax:
./generate_process_details.sh

#### Note:
This script would need executable permissions on your Linux machine and incase thats not available, you can assign the permissions by running the following command -
chmod +x generate_process_details.sh

#### Explanation of the solution:
The ps command would fetch the processes that are running on the system and using --sort we would first sort it based on most CPU consumption followed by most Memory consumption.
The head command would limit the result to top 3 processes only instead of displaying the whole list.
The sed command would then capture the heading and the third process and add it in the file.

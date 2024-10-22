# Shell script to monitor system resources such as CPU usage, memory usage, disk space, and 
# more. The script can use built-in Unix commands like top, free, df, and others to gather 
# information about system resources. Here's an example of a simple shell script to monitor system 
# resources:

#!/bin/bash
while true; do
 clear # Clear the terminal
 echo "System Resource Monitoring"
 echo "--------------------------"
 
 # Display CPU usage
 echo "CPU Usage:"
 top -n 1 -b | grep "Cpu"
 
 # Display memory usage
 echo -e "\nMemory Usage:"
 free -h
 
 # Display disk space usage
 echo -e "\nDisk Space Usage:"
 df -h
 sleep 5 # Wait for 5 seconds before the next update
done


# Here's what this script does:
# 1. Shebang (#!/bin/bash): Specifies the shell to be used for interpreting the script.
# 2. while Loop: Creates an infinite loop that repeatedly gathers and displays system 
# resource information.
# 3. clear: Clears the terminal screen for a cleaner display.
# 4. Display CPU Usage: Uses the top command with the -n 1 flag to display a single 
# iteration of CPU usage information. The grep "Cpu" command filters out the relevant 
# line.
# 5. Display Memory Usage: Uses the free command with the -h flag to display memory 
# usage in a human-readable format.
# 6. Display Disk Space Usage: Uses the df command with the -h flag to display disk space 
# usage in a human-readable format.
# 7. sleep 5: Pauses the loop for 5 seconds before gathering and displaying resource 
# information again.

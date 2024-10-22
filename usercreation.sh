# Automation User Management with Shell Script
# Automating user management tasks using a shell script can save time and ensure consistency 
# when dealing with user accounts on a Unix-like system. Below is an example of a shell script that 
# demonstrates how to automate user creation, modification, and deletion:

#!/bin/bash
# Define variables
ACTION="$1" # First argument: create, modify, or delete
USERNAME="$2" # Second argument: username
# Function to create a new user
create_user() {
 if [ -z "$USERNAME" ]; then
 echo "Usage: $0 create <username>"
 exit 1
 fi
 useradd -m -s /bin/bash "$USERNAME"
 echo "User $USERNAME created."
}
# Function to modify an existing user
modify_user() {
 if [ -z "$USERNAME" ]; then
 echo "Usage: $0 modify <username>"
 exit 1
 fi
 usermod -s /bin/bash "$USERNAME"
 echo "User $USERNAME modified."
}
# Function to delete an existing user
delete_user() {
 if [ -z "$USERNAME" ]; then
 echo "Usage: $0 delete <username>"
 exit 1
 fi
 userdel -r "$USERNAME"
 echo "User $USERNAME deleted."
}
# Main script
case "$ACTION" in
 create)
 create_user
 ;;
 modify)
 modify_user
 ;;
 delete)
 delete_user
 ;;
 *)
 echo "Usage: $0 {create|modify|delete} <username>"
 exit 1
 ;;
esac

# Explanation:
# 1. Shebang (#!/bin/bash): Specifies the shell to be used for interpreting the script.
# 2. Variables: The script takes two arguments: an action (create, modify, or delete) and a 
# username.
# 3. Functions: Separate functions are defined for each user management action (create, 
# modify, delete). Each function includes relevant commands to perform the desired 
# action using useradd, usermod, and userdel.
# 4. Case Statement: The main part of the script uses a case statement to determine which 
# user management action to perform based on the provided argument ($ACTION). It 
# calls the corresponding function depending on the action.
# To use the script, save it to a file (e.g., manage_users.sh), make it executable using chmod +x 
# manage_users.sh, and then you can run it with the desired action and username as arguments. 
# For example:
# ./manage_users.sh create johndoe
# ./manage_users.sh modify johndoe
# ./manage_users.sh delete johndoe
# Be cautious when performing user management tasks, especially deletions, as they can have 
# significant consequences. Always test your script in a controlled environment before using it in a 
# production environment.

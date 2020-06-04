## Tasks of 0x01. Shell, permissions
0-iam_betty: change your user ID to betty.</br>
1-who_am_i: prints the effective userid of the current user.</br>
2-groups: prints all the groups the current user is part of.</br>
3-new_owner: change the owner of the file hello to the user betty.</br>
4-empty: creates new file called hello.</br>
5-execute: this script adds execute permission to the owner of the file hello.</br>
6-multiple_permissions: this script adds execute permission to the owner and the group owner, and read permission to other users, to the file hello.</br>
7-everybody: script that adds execute permissions to owner, group owner, and other users to file hello</br>
this script has no commas</br>
8-James_Bond: script that sets the permission to the file hello as follows:</br>
* Owner: no permission at all
* Group: no permission at all
* Other users: all the permissions  </br>

9-John_Doe: script that sets the mode of the file hello to this:</br>
`-rwxr-x-wx 1 julien julien 23 Sep 20 14:25 hello`</br>
10-mirror_permissions: this script sets the mode of the file hello the same as ollehs mode.</br>
11-directories_permissions: script that adds execute permission to all subdirectories of the current directory for owner, group owner, and all other users. Normal files do not change</br>
12-directory_permissions: this script creates a directory called dir_holberton with 751 permissions on the working directory.</br>
13-change_group: this script changes the group owner to holberton for the file hello</br>
14-change_owner_and_group: this script changes the owner to betty and the group owner to holberton for all the files and directories in the working directory.</br>
15-symbolic_link_permissions: script changes the owner and the group owner of the file _hello to betty and holberton respectively.</br>
16-if_only: this script changes the owner of the file hello to betty only if it is owned by the user guillaume.</br>
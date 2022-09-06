# The Linux Filesystem

Linux has a file structure that will seem familiar and yet unfamiliar if you come from Windows.</br> Files in Linux are structured with the "root" of the filesystem being "/" unlike Windows where you would expect something like "C:\\" as the root. Another difference is the use of "/" (forward slash) on Linux as opposed to "\\" (back slash) on Windows.</br>
For you the beginner the folder structure of Linux might seem like complete chaos, but it follows a very sane structure ~~_**for the most part**_~~. The most important folders for beginners are "/home" "/bin" "/etc" and "/usr"</br>

* **/home** The home directory is where the home directories for users are stored.</br>
That is to say, any files that are personal to a user are stored within a folder that commonly bears the name of the user.

* **/bin** The bin directory where program "binaries" are stored. If you don't know what a binary is, then there is no reason to worry, you only have to think of them as programs. The bin directory among other locations is included in the path environment variable. This means that any programs which can be found on the path can be run without pointing to them explicitly. An example could be ```/bin/cat```, which would be how we would have to call ```cat``` if we did not have /bin in the path variable, but with it, in place, we can simply call `cat`, as is, to execute the program.

* **/etc** The etc directory is where configuration files are stored. These configuration files impact the whole system and as such ones specific to a user are stored within that user's home directory. When working with setup and services you are likely to run into the etc folder and the configs within.

* **/usr** Finally among the folders you are likely to encounter first is the usr directory. This directory is where user utilities and programs are installed. If you were to develop a program and wanted to make it available to all users, this is where you would put it. Within the directory, you will also find a bin folder for storing the user program binaries the same way as with the /bin folder.</br>

## Referencing files and directories
When referencing files we have three ways of doing so.
* **From /** - We can reference files directly from root. An example of this could be ```cd /home/enigma/very_important_document.txt```</br>
This way we always know exactly where we are targeting. The next cases can have may have 

</br>

# Learning the Linux command line with Enigma
## 01 pwd 
The first step of your Linux command line journey is to know where you are. For this, we have the command ```pwd``` which stands for _**p**rint **w**orking **d**irectory_.</br>
This command will as it says tell you where in the directory structure you are.
## 02 ls
The next step after finding out where you are would be to have a look around. To see what is in a folder the command to use would be ```ls``` which is short for _list_ as it lists the contents of a directory.
## 03 cd
Knowing where we can go is great for our next step into the filesystem. To navigate the filesystem we have the command ```cd``` which is short for _**C**hange **D**irectory_. Using ```cd``` we can change where we are in the filesystem.
## 04 cat
Now that we know how to traverse the filesystem, we can start interacting with the files. One of the first things we might want, could be to see the contents of a file. To do this we can use the ```cat``` command. ```cat``` is short for _concatenate_.
## 05 touch
With the ability to navigate and explore files we need the ability to create them as well. To create a file we have the touch command. This command will create an empty file where you have specified.
## 06 mkdir
We now have to knowledge to create file, so now we will explorer the creation of folders. To create a folder we use the command ```mkdir``` which is short form for _Make Directory_. 
## 07 mv
With both files and folder creation within our grasp, moving them around and renaming them becomes our next priority. To move files around we use the ```mv``` command which is short for _Move_.</br>
To use the move command to move a file we first specify the file that we want to move, and then we specify where we want to move it. 
```bash
mv /home/enigma/first-folder/important-document.txt /home/enigma/second-folder
```
If we want to rename a file we do it much the same way. The difference however lies in how we specify where the file goes. When specifying where the file goes we also specify the new filename.
```bash
mv /home/enigma/first-folder/important-document.txt /home/enigma/first-folder/important-document-new-name.txt
```
## 08 cp
While moving is nice and all, we might want to have copies as well. To copy something we use the ```cp``` command, which is short for _Copy_. The copy command works much the same as the move command in that it allows you to both copy a file or directory to another directory but also specify a new name for the file or directory that you are copying.

</br>
Copy without changing the name:

```bash
cp /home/enigma/first-folder/important-document.txt /home/enigma/second-folder
```
</br>
Copy with a new name:

```bash
cp /home/enigma/first-folder/important-document.txt /home/enigma/first-folder/important-document-new-name.txt
```
</br>
When copying a folder, only the folder itself will be copied, the contents will not be copied. To also copy the contents we need to specify an option on the copy command. The option in question is the recursive option or -r.
To use this option in the command, we simply add it as the first thing after the command.

```bash
cp -r /home/enigma/first-folder /home/enigma/third-folder
```

## 09 rm
Now that we have strewn the filesystem with all of our new files and folder we need a way to delete them. To delete files and folders we have the `rm` command which is short for _Remove_. To remove a file we simply specify which file we would like to remove.

```bash
rm /home/enigma/first-folder/important-document.txt
```

Deleting folders, however, requires the use of the recursive option. This is the case for any folder no matter if it contains files or not.

```bash
rm -r /home/enigma/first-folder
```

## 10 nano

With power asserted over the files in our system, changing them becomes the next target for our learning adventure. Editing files can be done in many ways but one of the easier is with a text editor. Nano is an example of a text editor that runs in the terminal. It is one of the easier editors as it displays what you need to do on the screen. There are however a few quirks in that some of the instructions need to be translated to buttons on the keyboard. ^x for example means you need to press <kbd>ctrl</kbd> + <kbd>x</kbd> and M-u means you need to press <kbd>alt</kbd> + <kbd>u</kbd>.


```bash
nano /home/enigma/first-folder/important-document.txt
```


## 11 find

Having control of files and their contents is good and all, but your average filesystem is extremely expansive. As such looking through every folder one at a time for the file you need can be very time-consuming and difficult. To solve this problem we have the program `find`. It will look through every folder that you have access to in search of the file you are looking for.

To use the find command we first specify where to search. i.e. if you want to look everywhere we specify the root /. We can also specify multiple locations by separating them with a space. The second thing we specify is the name of the file that we are looking for. To specify this we add '-name' and then the name of the file that you are looking for encased in quotes.

_Search for a file from root up called important-document.txt_

```bash
find / -name 'important-document.txt'
```

## 12 passwd

Linux is much more than just the filesystem, we have users, groups and much more. And with multiple users come differences in access, and that introduces the requirements of things like passwords. As such as a new user, you are likely to need a way to change your password.</br>
If you want to change your password you simply need to run the command `passwd`. It will then prompt you to enter your password twice. If you enter your passwords correctly, you will now have your new password set.

## 13 sudo

When working within Linux, you are likely to encounter many things that you do not have the correct level of access to. Many things require you to have access to the root user. This, however, would require everyone with admin rights to know a common password for the root account.
This is far from convinient and makes it harder to manage access. To fix this the ```sudo``` program comes into play. _sudo_ stands for _**S**uper **U**ser **DO**_. By prepending `sudo` to the front of your commands, they will be run as the root user instead of yourself. This is useful for things like installing programs or changing system configurations that are owned by the root user. </br>
A caveat on using sudo is that you need to be registered in the sudo group to be able to run commands using sudo.

## 14 apt
All the programs we have referenced until now come standard with the distribution of Linux that we recommend for beginners (Ubuntu). When you want to install any other programs or update any already installed programs you will need a package manager. On Debian, Ubuntu or any other Debian based disto, ```apt``` is the default program to handle the installation of programs from the internet. </br>
The first step to installing or updating programs using `apt` is to get the list of programs. To get the list we run apt with the sub-command update.
```bash
apt update
```
After updating the list of programs, we can search for the program that we are looking for. If you already know exactly what it is called, then you can skip directly to installing it, but if you are unsure of how it is written, or if there are multiple different versions you can use the search function. In this example, we will look for the program called neofetch which can give information about the computer that you are running on.
```bash
apt search neofetch
```important-document.txtbe caused by selecting the wrong thing.
```bash
apt install neofetch
```
We might also want to update our existing programs. For this, we can choose to just update everything at once by typing 'apt upgrade', which comes with the same caveats as install. We can also choose to upgrade only a specific package by adding the package name to the end of the command.
```bash
apt upgrade
``` 
When we want to uninstall a program we get two different options for it. We have the sub-command remove, which will uninstall the program, but it will leave configurations intact. The other option is the sub-command purge, which will uninstall the program, as well as remove any configuration made by the program.
```bash
apt remove neofetch
```
```bash
apt purge neofetch
```
## 15 chown
Now that we have covered the most important things for a beginner, we can continue our journey into the more complex parts of Linux. </br>
As we have discussed in the earlier exercises, ownership is a thing. This counts for both files as well as directories.
To change the ownership of a file you will often need to use sudo as the instances where you need to change ownership usually coincide with you not having the ownership. Files and directories in Linux have two types of ownership. There is the user that owns the file, but there is also a group that is associated with the file.
To change the ownership of a file using sudo, you can use this command.
```bash
sudo chown enigma:enigma-users /home/enigma/first-folder/important-document.txt
```
This command starts with the `sudo` command to run the `chown` command with administrator rights, then comes the `chown` command itself. The first thing specified in the `chown` command is the new owners specified as user:group where the username and the group name are separated using a single colon. Any further arguments added at the end of the command specify files that should receive the new ownership information. These files are separated with spaces.
## 16 chmod
While knowing about ownership is good, there is more to accessing files than just that. Files and folders have something called modes. Modes describe whether the owner, the group or others can read, write or execute a file. The Mode is assigned "individually" for the owner, the group and others. </br>
When using the command `ls -la` we are presented with results that also show the modes for the files and folders present. This is an example of the output.
```bash
total 120
drwxr-xr-x  3 enigma enigma  4096 Sep  6 20:27 .
drwxr-xr-x  4 root   root    4096 Sep  6 20:14 ..
-rw-------  1 enigma enigma   213 Sep  6 20:20 .bash_history
-rw-r--r--  1 enigma enigma   220 Apr 18  2019 .bash_logout
-rw-r--r--  1 enigma enigma  3526 Apr 18  2019 .bashrc
-rw-r--r--  1 enigma enigma    89 Sep  6 20:25 hello_world.cpp
-rwxr-xr-x  1 enigma enigma 16544 Sep  6 20:26 hello_world_program
drwxr-xr-x 12 enigma enigma  4096 Sep  6 20:20 .oh-my-zsh
-rw-r--r--  1 enigma enigma   807 Apr 18  2019 .profile
-rw-------  1 enigma enigma  1664 Sep  6 20:25 .viminfo
-rw-r--r--  1 enigma enigma 50765 Sep  6 20:22 .zcompdump-testmachine-5.8
-rw-------  1 enigma enigma   446 Sep  6 20:27 .zsh_history
-rw-r--r--  1 enigma enigma  3858 Sep  6 20:21 .zshrc
-rw-r--r--  1 enigma enigma    29 Sep  6 20:19 .zshrc.pre-oh-my-zsh
```

On the left, we see a bunch of letters and dashes. The left-most letter is 'd' if the item is a directory or a '-' if it is a file. The next three letters describe the Modes for the user, followed by three for groups mode, and three for the mode for others. </br>
The letters have the following meanings: </br>
* r - This means 'read' and if specified gives read permissions. Read permission means being able to see the contents of a folder, or being able to read the contents of a file.
* w - This means 'write' and if specified permits changing the contents of a file or adding files to a directory.
* x - This means 'execute' and specifies that a file can be run as code or that a directory can be traversed. 

These file permissions can also be described with a single number for the user, the group and others. An example could be '754' where 7 is the permissions for the user, 5 for the group and 4 for others.
The modes each have a numerical value, that is summed up to give the mode.
* r - 4
* w - 2
* x - 1

The astute might notice that these correspond to binary, and they would be correct. These are binary flags.
If you want to give a file read and write, you activate the read and write bit resulting in 0b110 or 6.

### Assigning permissions
When assigning permissions there are two ways of doing it. You can assign the permissions by specifying the three-digit value for the permissions. The other way is to use a more complicated syntax that let you change different parts separately. The program that is used to assign permissions is called `chmod` which is a contraction of _change mode_
#### The numeric way
When assigning the numeric way we use the following command:
```bash
chmod 754 /home/enigma/first-folder/important-document.txt
```
The command starts by specifying the permissions we want to set, followed by a list of files and or folders that we want to set the permissions for.

It is also possible to specify that the changes should be made recoursivly if done on a folder. This is done with the option '-R' placed just after the command itself
```bash
chmod -R 754 /home/enigma/first-folder
```

#### The other way
The other way involves firstly specifying who you want to change permissions for. This is done with four different letter. 'u' for user, 'g' for group, 'o' for other, and 'a' for all. You can also omit to specify the first letter, which will be the same as using 'a'. The second thing we specify is how we want to change the permissions. We can add with '+', subtract with '-' or set to exactly with '='. The third thing specified are the permissions that we are setting.


This will add the permissions x and r to the users mode without affecting the other modes
```bash
chmod u+xr ./important-document.txt
```

This will remove the execute permission from the group and others without affecting the users modes
```bash
chmod go-x ./important-document.txt
```

This will set the groups mode to exactly rx without affecting the modes of the user and other
```bash
chmod g=rx
```

## 17 man
After seeing the complexities of many of the previous commands, you are probably wondering how you are going to remember how everything works. For that, we have the `man` command which is short for _manual_.</br>
It is very simple to use the `man` command. We simply prepend man to any command that we wish to have the manual for and voila a manual will be presented.
An example could be:
```bash
man chmod
```
or
```bash
man man
```
navigate the manual we use the arrow keys, and to quit the manual we hit 'q'


## 18 grep

## 19 less

## 20 Pipe |

## 21 Redirect > and >>

## 22 tail and head

## 23 apropos

## 24 ; && ||
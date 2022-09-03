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
rm /home/enigma/first-folder 
```
## 10 nano

## 11 find

## 12 passwd

## 13 sudo

## 14 apt

## 15 chmod

## 16 chown

## 17 man

## 18 grep

## 19 less

## 20 |

## 21 > and >>

## 22 tail and head

## 23 apropos

## 24 ; && ||
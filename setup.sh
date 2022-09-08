#!/bin/bash


# Delete folder to start fresh
if [ -d "first-folder" ] && rm -rf first-folder
if [ -d "second-folder" ] && rm -rf second-folder
if [ -d "third-folder" ] && rm -rf third-folder
if [ -d "fourth-folder" ] && rm -rf fourth-folder
if [ -d "fifth-folder" ] && rm -rf fifth-folder

# Recreate folders
mkdir -p first-folder/inner-folder
mkdir -p second-folder/stuff
mkdir -p third-folder/things
mkdir -p fourth-folder/parts
mkdir -p fifth-folder/nightmare/

curl -o- https://random.hounsvad.dk/random > first-folder/inner-folder/important-document.txt
echo "cork shawl video-games sandal rusty-nail cell-phone" | sed 's/ /\n/g' > second-folder/stuff/the_stuff
echo "Manganese Palladiun Tellurium Iodine Ytterbium Livermorium" | sed 's/ /\n/g' > third-folder/things/the_thing
touch fourth-folder/parts/Bonnet
touch fourth-folder/parts/Fascia
touch fourth-folder/parts/Sunroof
touch fourth-folder/parts/Hydrometer
touch fourth-folder/parts/Battery
touch fourth-folder/parts/Ammeter
touch fourth-folder/parts/LamdaSensor
touch fourth-folder/parts/Thermometer
touch fourth-folder/parts/Thermostat
touch fourth-folder/parts/ThrottleBody
touch fourth-folder/parts/Transmission
touch fourth-folder/parts/BrakePedal
touch fourth-folder/parts/BrakeMasterCylinder
touch fourth-folder/parts/BrakeFluid
touch fourth-folder/parts/BrakePads
touch fourth-folder/parts/BrakeRotors
touch fourth-folder/parts/BrakeLines
touch fourth-folder/parts/BrakeCalipers
touch fourth-folder/parts/BrakeShoes
touch fourth-folder/parts/BrakeDrums
touch fourth-folder/parts/BrakeHardware
touch fourth-folder/parts/DoorSwitch
touch fifth-folder/nightmare/1/2/3/4/5/6/7/8/9/hidden-file1.txt
touch fifth-folder/nightmare/1/2/3/4/5/6/7/8/9/10/hidden-file2.txt
touch fifth-folder/nightmare/1/2/3/4/5/6/7/8/9/10/11/12/hidden-file3.txt
touch fifth-folder/nightmare/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/18/19/20/21/22/23/24/hidden-file4.txt
touch fifth-folder/nightmare/1/2/3/4/5/6/7/8/9/10/11/12/13/14/15/16/17/hidden-file5.txt


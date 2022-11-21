#!/bin/bash
find /mnt/c/Programming/bash/TestTasks/STC/Task2 -name *python3-pyqt*
dpkg-deb -I python3-pyqt5_5.7+dfsg-5_amd64.deb > python3-pyqt5.info
num=$(grep -n Package python3-pyqt5.info | cut -d: -f1) 
sed -i 's/Package/ /g' python3-pyqt5.info
res=$(sed "$num!d" python3-pyqt5.info)
echo "Имя пакета" $res

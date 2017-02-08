#!/bin/bash
# script for getting the airline data
# only a subset is provided here
wget http://packages.revolutionanalytics.com/datasets/AirOnTime87to12/AirOnTimeCSV.zip
jar xf AirOnTimeCSV.zip   #unzip alone doesn't work
mv AirOnTimeCSV/*.csv .
rmdir AirOnTimeCSV

@echo off

set URL=https://www.amfiindia.com/spages/NAVAll.txt
set OUTPUT_FILE=output_modify.csv

rem Download the file
curl -s -o temp.txt %URL%

rem Extract only the 4th and 5th columns
for /f "tokens=4,5 delims=;" %%a in (temp.txt) do echo %%a,%%b >> "%OUTPUT_FILE%"

rem Cleanup temporary file
del temp.txt

echo Extraction completed. CSV file saved as %OUTPUT_FILE%.

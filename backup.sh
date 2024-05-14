#!/bin/bash

# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit 1
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit 1
fi

targetDirectory=$1
destinationDirectory=$2

echo "The year is $(date +%Y)"
echo ""

currentTS=$(date +%s)

backupFileName="backup-[$currentTS].tar.gz"

origAbsPath=$(pwd)

cd $destinationDirectory
destDirAbsPath=$(pwd)

cd $origAbsPath

yesterdayTS=$(($currentTS - 24*60*60))

declare -a toBackup

for file in $targetDirectory;
do
  if [[ $(date -r $file +%s) -gt $yesterdayTS ]]
  then
    toBackup+=($file)
  fi
done

tar -czvf $backupFileName ${toBackup[@]}

mv $backupFileName $destDirAbsPath
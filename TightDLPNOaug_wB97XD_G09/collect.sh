function collect_folder {
  folder=$1
  cd $folder
  pwd
  #rm *.pkl 2>/dev/null
  if [ ! -e database.pkl ]
  then
    for i in `ls -d */ 2>/dev/null` 
    do 
      collect_folder $i
    done
    JKgaussstat `ls */*.pkl *.log 2>/dev/null` -noexample -out database.pkl
  fi
  cd ..
}

collect_folder "./"
cd -


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

#python ~/Desktop/JKQC/JKQCpickle.py database.pkl -extract 1sa,1am,1ma,1dma,1tma,1eda,1am1dma,1am1eda,1am1ma,1am1tma,1dma1eda,1dma1tma,1ma1dma,1ma1eda,1ma1tma,1sa1am,1sa1am1dma,1sa1am1eda,1sa1am1ma,1sa1am1tma,1sa1dma,1sa1dma1eda,1sa1dma1tma,1sa1eda,1sa1ma,1sa1ma1dma,1sa1ma1eda,1sa1ma1tma,1sa1tma,1sa1tma1eda,1sa2am,1sa2dma,1sa2eda,1sa2ma,1sa2tma,1tma1eda,2am,2dma,2eda,2ma,2sa,2sa1am,2sa1am1dma,2sa1am1dma1eda,2sa1am1dma1tma,2sa1am1eda,2sa1am1ma,2sa1am1ma1dma,2sa1am1ma1eda,2sa1am1ma1tma,2sa1am1tma,2sa1am1tma1eda,2sa1am2dma,2sa1am2eda,2sa1am2ma,2sa1am2tma,2sa1dma,2sa1dma1eda,2sa1dma1tma,2sa1dma1tma1eda,2sa1dma2eda,2sa1dma2tma,2sa1eda,2sa1ma,2sa1ma1dma,2sa1ma1dma1eda,2sa1ma1dma1tma,2sa1ma1eda,2sa1ma1tma,2sa1ma1tma1eda,2sa1ma2dma,2sa1ma2eda,2sa1ma2tma,2sa1tma,2sa1tma1eda,2sa1tma2eda,2sa2am,2sa2am1dma,2sa2am1eda,2sa2am1ma,2sa2am1tma,2sa2dma,2sa2dma1eda,2sa2dma1tma,2sa2eda,2sa2ma,2sa2ma1dma,2sa2ma1eda,2sa2ma1tma,2sa2tma,2sa2tma1eda,2sa3am,2sa3dma,2sa3eda,2sa3ma,2sa3tma,2tma,3sa1am1dma,3sa1am1dma1eda,3sa1am1dma1tma,3sa1am1dma1tma1eda,3sa1am1dma2eda,3sa1am1dma2tma,3sa1am1eda,3sa1am1ma,3sa1am1ma1dma,3sa1am1ma1dma1eda,3sa1am1ma1dma1tma,3sa1am1ma1eda,3sa1am1ma1tma,3sa1am1ma1tma1eda,3sa1am1ma2dma,3sa1am1ma2eda,3sa1am1ma2tma,3sa1am1tma,3sa1am1tma1eda,3sa1am1tma2eda,3sa1am2dma1eda,3sa1am2dma1tma,3sa1am2ma1dma,3sa1am2ma1eda,3sa1am2ma1tma,3sa1am2tma1eda,3sa1am3dma,3sa1am3eda,3sa1am3ma,3sa1am3tma,3sa1dma1eda,3sa1dma1tma,3sa1dma1tma1eda,3sa1dma1tma2eda,3sa1dma2tma1eda,3sa1dma3eda,3sa1dma3tma,3sa1ma1dma,3sa1ma1dma1eda,3sa1ma1dma1tma,3sa1ma1dma1tma1eda,3sa1ma1dma2eda,3sa1ma1dma2tma,3sa1ma1eda,3sa1ma1tma,3sa1ma1tma1eda,3sa1ma1tma2eda,3sa1ma2dma1eda,3sa1ma2dma1tma,3sa1ma2tma1eda,3sa1ma3dma,3sa1ma3eda,3sa1ma3tma,3sa1tma1eda,3sa1tma3eda,3sa2am,3sa2am1dma1eda,3sa2am1dma1tma,3sa2am1ma1dma,3sa2am1ma1eda,3sa2am1ma1tma,3sa2am1tma1eda,3sa2am2dma,3sa2am2eda,3sa2am2ma,3sa2am2tma,3sa2dma,3sa2dma1tma1eda,3sa2dma2eda,3sa2dma2tma,3sa2eda,3sa2ma,3sa2ma1dma1eda,3sa2ma1dma1tma,3sa2ma1tma1eda,3sa2ma2dma,3sa2ma2eda,3sa2ma2tma,3sa2tma,3sa2tma2eda,3sa3am,3sa3am1dma,3sa3am1eda,3sa3am1ma,3sa3am1tma,3sa3dma,3sa3dma1eda,3sa3dma1tma,3sa3eda,3sa3ma,3sa3ma1dma,3sa3ma1eda,3sa3ma1tma,3sa3tma,3sa3tma1eda,3sa4am,3sa4dma,3sa4eda,3sa4ma,3sa4tma,4sa1am1dma1eda,4sa1am1dma1tma,4sa1am1dma1tma1eda,4sa1am1dma2eda,4sa1am1dma2tma,4sa1am1ma1dma,4sa1am1ma1dma1eda,4sa1am1ma1dma1tma,4sa1am1ma1eda,4sa1am1ma1tma,4sa1am1ma1tma1eda,4sa1am1ma2dma,4sa1am1ma2eda,4sa1am1ma2tma,4sa1am1tma1eda,4sa1am1tma2eda,4sa1am2dma,4sa1am2dma1eda,4sa1am2dma1tma,4sa1am2eda,4sa1am2ma,4sa1am2ma1dma,4sa1am2ma1eda,4sa1am2ma1tma,4sa1am2tma,4sa1am2tma1eda,4sa1am3dma,4sa1am3eda,4sa1am3ma,4sa1am3tma,4sa1dma1tma1eda,4sa1dma1tma2eda,4sa1dma2eda,4sa1dma2tma,4sa1dma2tma1eda,4sa1dma3eda,4sa1dma3tma,4sa1ma1dma1eda,4sa1ma1dma1tma,4sa1ma1dma1tma1eda,4sa1ma1dma2eda,4sa1ma1dma2tma,4sa1ma1tma1eda,4sa1ma1tma2eda,4sa1ma2dma,4sa1ma2dma1eda,4sa1ma2dma1tma,4sa1ma2eda,4sa1ma2tma,4sa1ma2tma1eda,4sa1ma3dma,4sa1ma3eda,4sa1ma3tma,4sa1tma2eda,4sa1tma3eda,4sa2am1dma,4sa2am1dma1eda,4sa2am1dma1tma,4sa2am1eda,4sa2am1ma,4sa2am1ma1dma,4sa2am1ma1eda,4sa2am1ma1tma,4sa2am1tma,4sa2am1tma1eda,4sa2am2dma,4sa2am2eda,4sa2am2ma,4sa2am2tma,4sa2dma1eda,4sa2dma1tma,4sa2dma1tma1eda,4sa2dma2eda,4sa2dma2tma,4sa2ma1dma,4sa2ma1dma1eda,4sa2ma1dma1tma,4sa2ma1eda,4sa2ma1tma,4sa2ma1tma1eda,4sa2ma2dma,4sa2ma2eda,4sa2ma2tma,4sa2tma1eda,4sa2tma2eda,4sa3am,4sa3am1dma,4sa3am1eda,4sa3am1ma,4sa3am1tma,4sa3dma,4sa3dma1eda,4sa3dma1tma,4sa3eda,4sa3ma,4sa3ma1dma,4sa3ma1eda,4sa3ma1tma,4sa3tma,4sa3tma1eda,4sa4am,4sa4dma,4sa4eda,4sa4ma,4sa4tma -b -rg -el -g -fc 100 -v 0.996 -sort g -uniq rg -select 3 -out myfiltereddatabase.pkl

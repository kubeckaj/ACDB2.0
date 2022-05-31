for i in *.log
do 
  t1=`grep -c -i "wb97xd" $i`
  t2=`grep -c -i "Gaussian 09, Revision" $i`
  t3=`grep -c -i "g09defaults" $i`
  if [ $t1 -eq 0 ] || [ $t2 -ne 1 ] 
  then
    if [ $t1 -eq 0 ]
    then
      echo $i $t1 $t2
    elif [ $t3 -eq 0 ]
    then
      echo $i $t1 $t2 
    fi
  fi
  mols=`echo $i | sed "s/-/ /" | awk '{print $1}' | sed 's/[^0-9]*/ /g' | xargs -n 1 | awk 'BEGIN{n=0}{n+=$1}END{print n}'`
  if [ $mols -eq 0 ]
  then
    echo $i
  fi
done

files=`ls *.out 2>/dev/null`
if [ ! -z "$files" ]
then
  for i in *.out
  do
    o1=`grep -c -i "TightPNO" $i`
    o2=`grep -c -i "TightSCF" $i`
    o3=`grep -c -i "aug-cc-pVTZ" $i`
    if [ $o1 -ne 1 ] || [ $o2 -ne 1 ] || [ $o3 -eq 0 ]
    then
      echo $i $o1 $o2
    fi
  done
fi

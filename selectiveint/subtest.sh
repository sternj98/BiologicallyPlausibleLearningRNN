
i=0
for BIAS1 in  -.25 -.2  -.15  -.1   -.05 0.0  .05  .1 .15 .2 .25
do
for BIAS2 in  -.25 -.2  -.15  -.1   -.05 0.0  .05  .1 .15 .2 .25
#for ALPHAINPUTBIAS in  -0.5 -0.4 -0.3 -0.2 -0.1 0.0 0.1 0.20 0.3 0.4 0.5
do
    i=$((i+1))
    echo $i


    #mycmd="bsub -q short -g /subtest -oo output$i.txt -eo error$i.txt  -W 10:00 ./net TEST BIAS1 $BIAS1 BIAS2 $BIAS2 "
    mycmd="bsub -q short -g /subtest -oo output$i.txt -eo error$i.txt  -W 10:00 ./net TEST BIAS1 $BIAS1 BIAS2 $BIAS2 PROBAMODUL 0.0 RNGSEED 20"

    echo $mycmd
    $mycmd

done
done


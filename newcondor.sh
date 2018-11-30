#!/bin/bash

echo "input parameters: cluster, process" $1 $2  #Don't need inpath because we hardcoded the path into the text file

echo

CLUSTER=$1

PROCESS=$2


START_TIME=`/bin/date`

echo "started at $START_TIME"

#cd ${_CONDOR_SCRATCH_DIR}

#echo "executing ..."
cd /home/t3-ku/sbellamy/CMSSW_10_3_1_patch1/src
#cmsenv
eval `scramv1 runtime -sh` #executes the current runtime environment to what youre currently running. copies the environment into where you're running it
cd  ${_CONDOR_SCRATCH_DIR}

echo "python drawClusterProperties.py --inputNTupleFiles in_317650.txt --outFile out_317650_$CLUSTER_$PROCESS" #Every run will have a unique output file

python drawClusterProperties.py --inputNTupleFiles in_317650.txt --outFile out_317650_$CLUSTER_$PROCESS



exitcode=$?



echo ""

END_TIME=`/bin/date`

echo "finished at ${END_TIME}"

exit $exitcode

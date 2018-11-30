universe = vanilla
executable = condor.sh
arguments = $(cluster) $(process)
output = batch_$(cluster)_$(process).stdout
error = batch_$(cluster)_$(process).stderr
should_transfer_files = YES
when_to_transfer_output = ON_EXIT
transfer_input_files = drawClusterProperties.py, in_317650.txt,  lumiMap_317650.npy
#getenv = True
queue 1

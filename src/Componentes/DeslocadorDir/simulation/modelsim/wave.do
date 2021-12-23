view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 10000101 -range 7 0 -starttime 0ps -endtime 1000ps sim:/deslocadordir/input_vector 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 01000010 -range 7 0 -starttime 500ps -endtime 1000ps Edit:/deslocadordir/input_vector 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/deslocadordir/w 
wave modify -driver freeze -pattern constant -value 11111111 -range 7 0 -starttime 750ps -endtime 1000ps Edit:/deslocadordir/input_vector 
WaveCollapseAll -1
wave clipboard restore

view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0011100101110001 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador_16/A 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0101100101110101 -range 15 0 -starttime 465ps -endtime 1000ps Edit:/multiplexador_16/A 
wave create -driver freeze -pattern constant -value 0011110100111101 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador_16/B 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/multiplexador_16/S 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 1000ps Edit:/multiplexador_16/S 
WaveCollapseAll -1
wave clipboard restore

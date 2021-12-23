view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00001101 -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplexador_8/Multiplicador 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 11100101 -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplexador_8/Multiplicador_Deslocado 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/multiplexador_8/S 
wave modify -driver freeze -pattern constant -value 0 -starttime 750ps -endtime 1000ps Edit:/multiplexador_8/S 
wave modify -driver freeze -pattern constant -value 1 -starttime 875ps -endtime 1000ps Edit:/multiplexador_8/S 
WaveCollapseAll -1
wave clipboard restore

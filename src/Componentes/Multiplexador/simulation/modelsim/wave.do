view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/multiplexador/A 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/B 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/multiplexador/S 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 1000ps Edit:/multiplexador/S 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/multiplexador/A 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/multiplexador/B 
wave modify -driver freeze -pattern constant -value 1 -starttime 1000ps -endtime 1500ps Edit:/multiplexador/A 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ps -endtime 1500ps Edit:/multiplexador/B 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ps -endtime 1500ps Edit:/multiplexador/S 
WaveCollapseAll -1
wave clipboard restore

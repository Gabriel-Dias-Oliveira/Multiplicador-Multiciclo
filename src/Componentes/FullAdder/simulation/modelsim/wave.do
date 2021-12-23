view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/fulladder/Cin 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/fulladder/x 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ps -endtime 1000ps Edit:/fulladder/x 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/fulladder/y 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ps -endtime 750ps Edit:/fulladder/Cin 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ps -endtime 1000ps Edit:/fulladder/y 
wave modify -driver freeze -pattern constant -value 1 -starttime 750ps -endtime 1000ps Edit:/fulladder/Cin 
wave modify -driver freeze -pattern constant -value 0 -starttime 750ps -endtime 1000ps Edit:/fulladder/Cin 
wave modify -driver freeze -pattern constant -value 0 -starttime 760ps -endtime 1000ps Edit:/fulladder/x 
wave modify -driver freeze -pattern constant -value 0 -starttime 750ps -endtime 1000ps Edit:/fulladder/x 
WaveCollapseAll -1
wave clipboard restore

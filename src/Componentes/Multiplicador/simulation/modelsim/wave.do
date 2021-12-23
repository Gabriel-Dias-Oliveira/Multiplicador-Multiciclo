view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/multiplicador/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/multiplicador/reset 
wave create -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplicador/Multiplicando 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00000011 -range 7 0 -starttime 0ps -endtime 1000ps sim:/multiplicador/Multiplicador 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/multiplicador/calcula 
wave modify -driver freeze -pattern constant -value 0 -starttime 250ps -endtime 1000ps Edit:/multiplicador/calcula 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/multiplicador/clk 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/multiplicador/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 200ps Edit:/multiplicador/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 200ps Edit:/multiplicador/calcula 
wave modify -driver freeze -pattern constant -value 00010110 -range 7 0 -starttime 0ps -endtime 1000ps Edit:/multiplicador/Multiplicando 
wave modify -driver freeze -pattern constant -value 00001110 -range 7 0 -starttime 0ps -endtime 1000ps Edit:/multiplicador/Multiplicador 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/multiplicador/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 2000ps Edit:/multiplicador/reset 
wave modify -driver freeze -pattern constant -value 00010110 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicando 
wave modify -driver freeze -pattern constant -value 00001110 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicador 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 2000ps Edit:/multiplicador/calcula 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ps -endtime 2000ps Edit:/multiplicador/calcula 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 300ps Edit:/multiplicador/calcula 
wave modify -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicando 
wave modify -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicador 
wave modify -driver freeze -pattern constant -value 00000101 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicando 
wave modify -driver freeze -pattern constant -value 00000101 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicador 
wave modify -driver freeze -pattern constant -value 00001010 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicando 
wave modify -driver freeze -pattern constant -value 00001010 -range 7 0 -starttime 0ps -endtime 2000ps Edit:/multiplicador/Multiplicador 
WaveCollapseAll -1
wave clipboard restore

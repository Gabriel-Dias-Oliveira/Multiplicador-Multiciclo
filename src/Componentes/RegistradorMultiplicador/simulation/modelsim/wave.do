view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 10101110 -range 7 0 -starttime 0ps -endtime 1000ps sim:/registradormultiplicador/Multiplicador 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 250ps sim:/registradormultiplicador/Enable 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 250ps sim:/registradormultiplicador/Reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/registradormultiplicador/Clock 
wave modify -driver freeze -pattern constant -value 1 -starttime 250ps -endtime 500ps Edit:/registradormultiplicador/Enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 250ps -endtime 500ps Edit:/registradormultiplicador/Reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ps -endtime 1000ps Edit:/registradormultiplicador/Reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 500ps -endtime 1000ps Edit:/registradormultiplicador/Enable 
wave modify -driver freeze -pattern constant -value 01011110 -range 7 0 -starttime 750ps -endtime 1000ps Edit:/registradormultiplicador/Multiplicador 
wave modify -driver freeze -pattern constant -value 1 -starttime 250ps -endtime 1000ps Edit:/registradormultiplicador/Reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 850ps -endtime 1000ps Edit:/registradormultiplicador/Reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 950ps -endtime 1000ps Edit:/registradormultiplicador/Reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 850ps -endtime 950ps Edit:/registradormultiplicador/Reset 
WaveCollapseAll -1
wave clipboard restore

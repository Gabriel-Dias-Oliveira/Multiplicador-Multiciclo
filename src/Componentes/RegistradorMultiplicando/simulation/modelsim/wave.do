view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1000011111110100 -range 15 0 -starttime 0ps -endtime 1000ps sim:/registradormultiplicando/Multiplicando 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/registradormultiplicando/Enable 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 250ps sim:/registradormultiplicando/Reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 250ps -endtime 500ps Edit:/registradormultiplicando/Reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 750ps Edit:/registradormultiplicando/Reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 750ps -endtime 1000ps Edit:/registradormultiplicando/Reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/registradormultiplicando/Clock 
WaveCollapseAll -1
wave clipboard restore

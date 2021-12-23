view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0100100110001110 -range 15 0 -starttime 0ps -endtime 1000ps sim:/registradorproduto/Produto 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1010010010001001 -range 15 0 -starttime 500ps -endtime 1000ps Edit:/registradorproduto/Produto 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 500ps sim:/registradorproduto/Enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 1000ps Edit:/registradorproduto/Enable 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/registradorproduto/Reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/registradorproduto/Clock 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/registradorproduto/Clock 
WaveCollapseAll -1
wave clipboard restore

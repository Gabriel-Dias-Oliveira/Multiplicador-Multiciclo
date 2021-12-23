view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/unidadecontrole/Clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/unidadecontrole/Resetn 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/unidadecontrole/calcula 
wave create -driver freeze -pattern constant -value 1010010010001001 -range 15 0 -starttime 0ps -endtime 1000ps sim:/unidadecontrole/Multiplicando 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 10100100 -range 7 0 -starttime 0ps -endtime 1000ps sim:/unidadecontrole/Multiplicador 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0000000000000000 -range 15 0 -starttime 500ps -endtime 1000ps Edit:/unidadecontrole/Multiplicando 
wave modify -driver freeze -pattern constant -value 10100101 -range 7 0 -starttime 300ps -endtime 1000ps Edit:/unidadecontrole/Multiplicador 
WaveCollapseAll -1
wave clipboard restore

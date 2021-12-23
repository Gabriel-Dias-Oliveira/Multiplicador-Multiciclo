view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1101100000001111 -range 15 0 -starttime 0ps -endtime 1000ps sim:/bitsadder/Multiplicando 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0000100000110101 -range 15 0 -starttime 500ps -endtime 1000ps Edit:/bitsadder/Multiplicando 
wave create -driver freeze -pattern constant -value 0101000111011110 -range 15 0 -starttime 0ps -endtime 1000ps sim:/bitsadder/Produto 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1010011000011101 -range 15 0 -starttime 500ps -endtime 1000ps Edit:/bitsadder/Produto 
wave modify -driver freeze -pattern constant -value 1001000000001111 -range 15 0 -starttime 0ps -endtime 500ps Edit:/bitsadder/Multiplicando 
wave modify -driver freeze -pattern constant -value 1001000101101111 -range 15 0 -starttime 250ps -endtime 500ps Edit:/bitsadder/Multiplicando 
wave modify -driver freeze -pattern constant -value 0101010111010010 -range 15 0 -starttime 250ps -endtime 1000ps Edit:/bitsadder/Produto 
wave modify -driver freeze -pattern constant -value 0101000111011110 -range 15 0 -starttime 500ps -endtime 1000ps Edit:/bitsadder/Produto 
WaveCollapseAll -1
wave clipboard restore

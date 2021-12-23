view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0101010110101111 -range 15 0 -starttime 0ps -endtime 1000ps sim:/deslocadoresq/input_vector 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1010011110010011 -range 15 0 -starttime 650ps -endtime 1000ps Edit:/deslocadoresq/input_vector 
wave modify -driver freeze -pattern constant -value 1011100011100011 -range 15 0 -starttime 350ps -endtime 650ps Edit:/deslocadoresq/input_vector 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/deslocadoresq/w 
wave modify -driver freeze -pattern constant -value 0110100101111111 -range 15 0 -starttime 350ps -endtime 650ps Edit:/deslocadoresq/input_vector 
WaveCollapseAll -1
wave clipboard restore

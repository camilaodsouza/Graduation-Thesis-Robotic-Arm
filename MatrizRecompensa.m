
function MatrizR = MatrizRecompensa

MatrizR = [
# 01   02   03   04   05   06   07   08   09   10   11   12   13   14   15   16   17   18   19   20   21   22   23   24   25   26   27
 -Inf   0    0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf; 
   0  -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
   0    0  -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf   0  -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf   0  -Inf -Inf -Inf   0    0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf   0  -Inf -Inf -Inf -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf   0  -Inf   0  -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf   0    0  -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf   0    0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf   0    0  -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf   0  -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0    0  -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf   0    0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0    0  -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf   0    0  -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf   0  -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf   0  -Inf -Inf   0  -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf   0  -Inf   0  -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf   0    0  -Inf -Inf -Inf -Inf;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf -Inf -Inf -Inf -Inf -Inf   0   100;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf   0  -Inf   0  -Inf  100;
 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf  100];
 
end
 
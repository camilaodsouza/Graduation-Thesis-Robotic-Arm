//

i=1;

a=max(aux);

for i = 1:size(aux,2)
if aux(i)<a
aux(i)=0;
i=i+1;
else
aux(i)=1;
i=i+1;
end
end

find(aux)

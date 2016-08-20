function resposta = Script ( EstadoInicial)

Q = AchaMatrizQ;
EstadoFinal = 27;
i=1;
j=2;
resposta(1) = EstadoInicial
estado = EstadoInicial;

while estado~=EstadoFinal 
  aux = Q(estado,:);
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

  EstadoSeguinte = find(aux);
  estado = EstadoSeguinte(1);
  resposta(j) = estado;
  j=j+1;
end




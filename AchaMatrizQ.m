function Q = AchaMatrizQ

gama = 0.8;                               # No futuro, colocar gama como input.  
R = MatrizRecompensa;
Q = zeros(size(R));                       # Cria matriz Q 27x27 com zeros em todas as posições
EstadoFinal = 27; 
Q1 = ones(size(R))*inf;                   # Inicializa Q anterior com número muito grande
contador = 0;

for episodio = 0:50000

  y = randperm(size(R,1));                # Randomiza estado inicial
  estado = y(1); 
  while estado~=EstadoFinal
    x = find(R(estado,:)>=0);
    x1 = randomico(x);
    QMax = max(Q, [], 2);
    Q(estado,x1) = R(estado,x1)+gama*QMax(x1);
    estado = x1;
  end
  if sum(sum(abs(Q1-Q)))<0.0001 && sum(sum(Q>0))
    if contador>1000
      episodio
      break
     else 
      contador = contador + 1;
      end
  else
    Q1=Q;
    contador = 0;
   end
end

#g=max(max(Q));      Normaliza a matriz, mas essa parte não funciona porque o max é 100
#if g > 0
#  Q=100*Q/g;
#  end
  
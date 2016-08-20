#fazer permutação entre posições de um vetor
#ideia 1: 
#usar randperm do tamanho do vetor e pegar o valor dessa posição do vetor
#ideia 2:
#usar randperm do tamanho do maior possível valor do vetor, pegar a primeira posição e ficar conferindo 
#se existe esse número dentro do vetor 

function x = randomico(q)       #função que escolhe uma posição randômica de um vetor e retorna seu valor

aux = randperm(size (q,2));
aux2 = aux(1);
x = q(aux2);

end


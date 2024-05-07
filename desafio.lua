--Tabela Proposta do Desafio

--    se vitórias for menor do que 10 = Ferro
--    Se vitórias for entre 11 e 20 = Bronze
 --   Se vitórias for entre 21 e 50 = Prata
 --   Se vitórias for entre 51 e 80 = Ouro
 --   Se vitórias for entre 81 e 90 = Diamante
 --   Se vitórias for entre 91 e 100= Lendário
  --  Se vitórias for maior ou igual a 101 = Imortal


-- Habilita o UTF8 no console
 os.execute("chcp 65001")
 os.execute("cls")

-- Declaração de Variáveis
local derrotas
local vitorias
local classificadores = {10,20,50,80,90,100}
local rank = {"Ferro", "Bronze", "Prata", "Ouro", "Diamante", "Lendário", "Imortal"}

-- Pede o input de derrotas para o usuário
print("Digite o número de derrotas:");
io.write("> ");
derrotas = io.read("*n");

-- Pede o input de vitórias para o usuário
print("Digite a quantidade de vitórias:");
io.write("> ");
vitorias = io.read("*n");

function calculaSaldo(derrotas, vitorias)
    return vitorias - derrotas;
end

function calculaRank(saldo)
    -- Laço de repetição passando pela lista de classificadores
    for i = 1, 6, 1 do

        --atribuindo o valor do indice do array classificadores a uma variavel
        local comparador = classificadores[i];

        -- comparando o nivel com os classificadores
        if saldo <= comparador then

            --formando o print de feedback para o usuario
            --caso o nivel informado seja igual ao menor que o comparador
                print()
                print("-------------------------------------")
                print()
                print(string.format("O Herói tem saldo de %d e está no nível de %s", saldo, rank[i]))
                print()
                print("-------------------------------------")

            --caso o nivel já foi encontrado ele pausa o laço de repetição
            break
        end
        -- caso ninguem classificador seja adequado ao nivel, então ele está acima
        -- entao o nivel será maior do que 100, ou seja, imortal
        if saldo > 100 then
            print()
            print("-------------------------------------")
            print()
            print(string.format("O Herói tem saldo de %d e está no nível de %s", saldo, rank[7]))
            print()
            print("-------------------------------------")
            break;
        end



    end
    
end

saldo = calculaSaldo(derrotas, vitorias);
calculaRank(saldo);



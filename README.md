<p align="center">
  <img src="https://raw.github.com/leodhb/beowulf-utils/master/raw/ifal.png" width="350" title="hover text">
</p>

# Utilitários para montagem de um cluster de alto desempenho (Beowulf)

## Equipamentos necessários

1. Pelo menos dois computadores desktop
2. Um switch de rede
3. Cabos Rj-45

## Configuração das máquinas

1. Sistema operacional linux (de preferência baseado no dedian)
2. Usuário: root
3. Hostname: beowulf-XX (01 - 99, onde 01 será o nó principal)
4. IP local único

## Instruções

1. Com as máquinas conectadas a internet, executar o seguinte comando: <br>
<code>sudo apt install make patch xorg-dev libpng-dev gcc g++</code><br>
Ele irá instalar as dependencias iniciais para a implementação do cluster.

2.
## Comandos
Os comandos aqui possuem a sintaxe padrão do linux. Caso tenha dúvidas, favor checar a documentação do comando (sem o primeiro P)

1. palive: exibe todos os nós ativos do cluster
2. pmem: exibe a memória usada pelo cluster
3. pswap: exibe a memória swap usada pelo cluster
4. pload: exibe a carga de processamento dos nós do cluster
5. pexec: executa comandos linux em todos os nós do cluster
6. preboot: reinicia o cluster
7. phalt: desliga o cluster
8. prep: replica arquivos no cluster
9. prepr: replica diretórios no cluster
10. pcp: copia arquivos no cluster
11. pcpr: pcp: copia arquivos no cluster
12. padduser: adiciciona usuários no cluster
13. ppasswd: definie a senha de um user no cluster
14. puserdel: remove um usuário no cluster
15. ppkginstall: instala pacotes no cluster
16. ppkgremove: remove um pacote no cluster

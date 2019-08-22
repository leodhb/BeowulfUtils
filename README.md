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
3. Hostname: mestre (para a máquina principal) e noX (no01, no02...para os outros nós)
4. IP local único (procedimento feito no servidor DHCP)

## Instruções

1. Com as máquinas conectadas a internet, executar o seguinte comando: <br>
<code>sudo apt install make patch xorg-dev libpng-dev gcc g++</code><br>
Ele irá instalar as dependencias iniciais para a implementação do cluster.

2. Para que as máquinas consigam se encontrar dentro da rede, é necessário alterar algumas configurações do sistema. Primeiro, adicionamos as seguintes linhas, em todos os nós:
<p align="center">
  <img src="https://raw.github.com/leodhb/beowulf-utils/master/raw/tabela1.png" width="900" title="hover text">
</p>
  Após isso, reinicie a rede em todos os nós utilizando o comando <code>sudo ./etc/init.d/networking restart</code><br><br>

3. Feita a configurações de rede necessárias, precisamos configurar um sistema de arquivos compartilhado, para que os processos possam ser executados de forma paralela no cluster. Para tal, usaremos um servidor NFS, que pode ser instalado através do comando <code>sudo apt install nfs-kernel-server</code><br> Feiro isso, precisamos configurar o NFS adequadamente em todos os nós. Para que possa montar as pastas realizar essa montagem logo na inicialização do cluster.
<p align="center">
  <img src="https://raw.github.com/leodhb/beowulf-utils/master/raw/tabela2.png" width="900" title="hover text">
</p>
  Após os procedimentos acima, os diretórios /usr e /lib do nó mestre estarão sendo compartilhados por todos os nós.
  <br><br>
4. Agora precisamos configurar o acesso remoto entre as máquinas, utilizando o protocolo SSH. A ideia é que as máquinas possam ser acessadas remotamente do nó mestre sem a necessidade de uma senha.
<p align="center">
  <img src="https://raw.githubusercontent.com/leodhb/beowulf-utils/master/raw/tabela3.png" width="900" title="hover text">
</p>
A partir daqui, se executarmos o comando <code>ssh no01</code> ou <code>ssh no02</code>, ele não deve pedir senha.
<br>
5.Com a comunicação entre os nós totalmente estabelecida, precisamos instalar a biblioteca de troca de mensagens (MPI), para executar determinados processos de forma distribuida.
<p align="center">
  <img src="https://raw.githubusercontent.com/leodhb/beowulf-utils/master/raw/tabela4.png" width="900" title="hover text">
</p>
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

#!/bin/bash 

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC 


echo "Iniciando criação de usuários"

echo"Usuários ADM"
useradd carlos -c"Carlos Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_ADM,adm
passwd -e

useradd maria -c"Maria Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_ADM,adm
passwd -e

useradd joao -c"Joao Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_ADM
passwd -e

echo "Usuários VENDAS"
useradd debora -c"Debora Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_VEN
passwd -e

useradd sebastian  -c"Sebastian Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_VEN
passwd -e
useradd roberto  -c"Roberto Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_VEN
passwd -e

echo "Usuários SECRETARIADO"

useradd josefina -c"Josefina Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_SEC
passwd -e 

useradd amanda -c"Amanda Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_SEC
passwd -e

useradd rogerio -c"Rogerio Oliveira" -m -s /bin/bash  -p $(openssl passwd  -crypt  teste123) -G GRP_SEC
passwd -e 

echo "Fim da Execução"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/











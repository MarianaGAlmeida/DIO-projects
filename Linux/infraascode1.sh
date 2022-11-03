#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /ti
mkdir /comerc
mkdir /adm

echo "Criando grupos de usuários..."

groupadd GRP_TI
groupadd GRP_COMERC
groupadd GRP_ADM

echo "Criando usuários e especificando grupos..."

useradd func11 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI
useradd func12 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI
useradd func13 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TI

useradd func21 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMERC
useradd func22 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMERC
useradd func23 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMERC

useradd func31 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd func32 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd func33 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Especificando permissões dos diretórios...."

chown root:GRP_TI /ti
chown root:GRP_COMERC /comerc
chown root:GRP_ADM /adm

chmod 770 /ti
chmod 770 /comerc
chmod 770 /adm
chmod 777 /publico






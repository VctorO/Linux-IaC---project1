#!/bin/bash
echo "Creating directories.."

mkdir /publik
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating users groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p  $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Especyfing permitions of directories..."
chown root: GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publik

echo "END..."


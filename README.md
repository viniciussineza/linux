# Learning Linux

## commands

### pwd

pwd - show at what directory we are

### touch

Create a file.

### ls

**ls** == list archives and directories
ls /sys/kernel/p* == using p* will filter all archives or directories beginning with p.
ls -l == long list format
ls -la == list all even occult
ls -lh == changes size reading format

### find

**find** busca através do diretório em que estamos

find -name arq* - irá buscar arquivos com a **flag -name** que começam com **arq**.

### mkdir

make directory

### rmdir

remove directory

### rm

remove files and **rm -rf** excludes directories with files inside.

rm arquivo* == remove all files that have the world archive
rm *.txt == remove all text files
rm -i == prompt every removal
rm -rfvi == prompt and verbose though out the execution

### help

after a command flag --help

### man

manual

man clear

### passwd
Changes users password

-e == expire date. When no date is passed, user must change on new login.

### su

Changes the user to super user root

### changing remote acess to root

cat /etc/ssh/sshd_config

sudo nano /etc/ssh/sshd_config
PermitRootLogin yes

### command history

history - shows all recent commands
!! == execute the last command
!number == execute this exactly command
|?ls? == checks in history with there is a ls command and if true, execute

# Criação de usuários

### useradd
Create user
-c == nome completo do usuário
-m == create home directory
-s == login shell
-p == encrypted password of the new account
-e == expire acess date
-g -G == add one or multiple groups

useradd joao.silva == Sem acentos, caracteres especiais etc.
useradd joao.silva -m -c "Joao da Silva Sauro" 
useradd joao.silva -m -c "Joao da Silva Sauro" -s /bin/bash
useradd guest -c "Convidado temporário" -e DD/MM/ANO
useradd guest -p $(openssl passwd -crypt SENHAdesejada) == passing a password
useradd admin -c "Admnistrador" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM

### userdel
Delete user

userdel -f joao.silva
-r == remove home directory and mail spool

### chsh
Change Shell

-s == new login shell for user
chsh -s /bin/bash joao.silva == usuário joão irá ter acesso ao bash


### usermod
Modify user
-g == change to one group to another
-G == change to multiple groups

usermod guest -s /bin/bash
usermod mariana -G adm, sudo

### groupadd
Add group

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_TESTE

### groudel
Delete group

groupdel GRP_TESTE == must be empty

### gpaswd
-d == delete user from GROUP

gpasswd -d Mariana sudo

### all users on server
cat /etc/passwd

### all groups on server
cat /etc/group

#### Creating multiple users with a script

```bash
mkdir scripts && cd scripts
nano create_user.sh

#!/bin/bash

echo "Creating users..."

useradd guest -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest -e

useradd guest1 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest1 -e

echo "We're Done."

# CTRL + O - Save
# CTRL + X - Quit

chmod +x create_user.sh
./create_user.sh

```

```bash
#!/bin/bash

echo "Exibindo a data atual..."
date
```

ls -l 

d - directory
rwx - owner (Read, Write, Execute)
rwx - group
rwx - others


### chown
change owner

chown debora:GRP_ADM /adm/ == chown USER:GROUP /directory - just root user

### chmod

Read    - 4
Write   - 2
Execute - 1

chmod 750 /adm/ - owner RWX / group R-X / others --- == changing access to adm directory
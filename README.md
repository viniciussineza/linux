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
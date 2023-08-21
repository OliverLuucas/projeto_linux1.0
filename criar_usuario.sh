 #!/bin/bash


echo "Iniciando criação de usuários"
useradd convidado4 -c"Temporario" -m -s /bin/bash -p $(openssl passwd -crypt teste123)
passwd convidade4 -e

useradd convidado2 -c"Temporario" -m -s /bin/bash -p $(openssl passwd -crypt teste123)
passwd convidado2 -e

useradd convidado3 -c"Temporario" -m -s /bin/bash -p $(openssl passwd -crypt teste123)
passwd convidade3 -e

echo "Usuários criados"

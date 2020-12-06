# Cluster Linux
===============

Travaux pratique autour du déploiement d'un cluster sous linux et de l'ajout de fonctionnalité de stockage NFS, iSCSI.

Prérequis
---------
Il est possible d'effectuer le TP de manière différente.

#### Docker :

Utilisation d'un socle logiciel Molecule (pour les tests de roles ansible), Ansible (pour le provisonnement et automatisation) et Docker (pour les conteneurs).

Le déploiement des machines se fait via un script : 

````
// Donner les droits d'execution au script suivant 
chmod + x create.sh destroy.sh

// Création des conteneurs
./create.sh
...
Creating clusternode1 ... done
Creating storage1     ... done
Creating clusternode2 ... done
Creating client       ... done


````
> Durant le TP il est possible que des erreurs vous empêches d'avancer. Dans ce cas effectuer "./destroy.sh" qui aura pour effet de stopper et détuire conteneurs, images.
>> La méthode Docker posséde quelque désavantage par rapport à la virtualisation. Il n'est pas possible de gérer les disques. Nous allons alors utiliser LVM.

##### LVM :

Installation des paquets LVM :

````
yum -y install lvm2
````


ou

Vagrant + virtualbox 

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).

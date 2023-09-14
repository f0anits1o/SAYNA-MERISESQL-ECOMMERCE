# SAYNA-MERISESQL-ECOMMERCE

## Modèle Conceptuel de donnée

                  
### OBJECTIFS

<p> La base de données a pour objet de :

• Aider l'entreprise de connaître les besoins et les attentes de ses clients ;

• Établir le bon business model ;

• Sécuriser au maximum le client et l'entreprise notamment les produits achetés par les clients ;

• Contrôler les départements concernés par la gestion de stock de l'entreprise

• Donner une satisfaction des clients potentiels qui achètent des produits sur le site ;

• Assurer la livraison à domicile des produits ;

• Aider les gens qui n'ont pas assez du temps pour chercher des produits dont ils ont en besoins.

</p>

### DESCRIPTION DES FONCTIONNALITES


<p>
• Gérer le système des commandes de produits en ligne ;

• Gérer l'horaire de travail des employés dans le domaine de travail en ligne ;

• Faciliter la requête dans un site e-commerce.

</p>

### IDENTIFICATION DES UTILISATEURS

<p>
• Tous les gens peuvent se connecter sur le site, surtout les personnes qui n'ont pas beaucoup du temps pour aller faire une course ;

• Le responsable de produits (stock) et livreurs dans une entreprise.


</p>

### ENTITES

<p>
Produit : informations nécessaires sur le produit ;

Adresse : informations exactes des clients ou employés travailler sur le département concerné ;

Contact : contact rapide pour communiquer avec le client ou l'employé ;

Employé : détails sur l'employé ;

Paiement : détails du paiement faites par le client ;

Catégorie : informations sur la catégorie des produits existants ;

Livraison : détails d'une livraison en tout cas ;

Commande : informations sur la commande ;

Date et heure de travail (DHW) : se référer aux informations de travail d'un employé ;

Fonctions : détails de la fonction de chaque salarié dans l'entreprise ;

Utilisateurs : compte pour pouvoir se connecter sur le site ;

Absence : information complète pour l'absence d'un employé.

</p>

### ASSOCIATIONS

<p>

Localiser : type (1,1 :1, N) car une adresse doit être unique à un client, à un employé ; chaque client ayant sa propre résidence, l’adresse de la livraison varie en fonction de l’adresse de la commande de client.



Communiquer : type (1,1 :1, N) car un contact rapide doit exister pour communiquer assez facilement avec un client mais un client ou employé peut être avoir plusieurs moyens de communication rapides ( E-mail, nom Facebook, nom Twitter).



S'inscrire : type (1,1 :1, N) puisque chaque client ou employé qui se connecte sur le site doivent s'inscrire avec un seul et unique compte. Mais l'utilisateur peut comporter plusieurs inscriptions.



Avoir un emploi du temps de travail (EDTW) : type (1,1 :1, N) chaque employé a son emploi du temps. Ce planning de travail dépend du tour de rotation.



Avoir : type (1,1 :1,1) car un employé doit avoir une et une seule fonction au sein du département concerné.



Suivi : type (1,1 :0, N) parce qu'un employé a sa seule raison d’absence mais pendant une date donnée il y a une possibilité que plusieurs employés sont (est) absents ou ils sont tous présents.



Faire : type (1,1 : 0, N) parce que le client peut être juste visiter le site mais une fois qu'il fera le payement, ce paiement doit être unique et seul pour chaque client.



Valider : type (1,1 :1,1) une commande doit être validée par un seul et unique paiement.


</p>

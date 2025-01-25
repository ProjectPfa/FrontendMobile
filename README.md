# FrontendMobile
# ID Extractor Mobile App
## Description Mise à Jour (2) et Features 
Cette interface est une generalisation de reconnaissance optique de caractères (OCR) qui permet de convertir des informations visuelles (images comme id image ou documents) en texte exploitable. Son utilité peut être particulièrement pertinente dans des contextes comme le scan d'une carte d'identité (ID) pour en extraire rapidement et efficacement les informations essentielles. Voici une explication détaillée de son usage et de ses fonctionnalités dans notre contexte :

-**Utilité principale** : Scanner une carte d'identité et extraire des informations
![8888](https://github.com/user-attachments/assets/c2586979-62f7-4fdb-88c7-07c8aeb5f578)
![666](https://github.com/user-attachments/assets/4e09a975-3420-4a84-9d23-5709e3b989c0)
![7777](https://github.com/user-attachments/assets/ee74d486-7fcf-4a26-a4a2-9e613c765028)

En utilisant l'option "Camera", l'utilisateur peut directement prendre une photo de la carte d'identité. Cela permet de capturer l'image en temps réel, ce qui est pratique lorsqu'aucune copie numérique n'est disponible.
Une fois la photo prise, l'application peut détecter et extraire automatiquement des informations comme le nom, la date de naissance, le numéro d'identité, etc.
Importation depuis la galerie (Gallery) :

Si la carte d'identité est déjà numérisée ou stockée sur le téléphone, l'option "Gallery" permet de sélectionner facilement l'image pour lancer l'analyse OCR.
-**Features**
![09999](https://github.com/user-attachments/assets/d023f8d3-b1e7-4eb2-86ac-660052840f01)

Scan des fichiers PDF (Scan PDF) :

Dans le cas où les informations de la carte d'identité sont contenues dans un fichier PDF (comme un document scanné), cette option permet de traiter directement le fichier et d'en extraire les textes importants.
Fonction de recadrage (Use CROP for select text area) 

Cette fonctionnalité est utile pour délimiter uniquement la partie pertinente de l'image ou du document (par exemple, uniquement la zone contenant le nom et la photo). Cela améliore la précision de l'extraction, en évitant de traiter des informations inutiles.


## Description Mise à Jour
L'ID Extractor App a été améliorée pour inclure une interface mise à jour qui permet aux utilisateurs de scanner directement leur pièce d'identité (ID) via l'application mobile. Cette fonctionnalité intuitive intègre une caméra intégrée, optimisée pour capturer des images de haute qualité, garantissant une reconnaissance OCR précise et rapide. Grâce à cette mise à jour, les utilisateurs peuvent extraire leurs informations personnelles en temps réel, sans étapes supplémentaires, ce qui simplifie encore plus la gestion de leurs données.
Voici les captures d'écran de l'interface mise à jour de l'ID Extractor App, illustrant la nouvelle fonctionnalité de scan direct des pièces d'identité via l'application mobile.

![mobile1](https://github.com/user-attachments/assets/b19eb26d-d739-46a4-af40-2a450e336cda)
![mobile2](https://github.com/user-attachments/assets/8bf455d5-5f53-4771-b04c-9c28234292a1)


## Description
L'**ID Extractor App** est une application mobile développée avec **Flutter** qui permet aux utilisateurs d'extraire automatiquement leurs informations personnelles depuis une image de leur pièce d'identité (ID) grâce à la technologie OCR (Optical Character Recognition). Cette application offre une solution rapide, sécurisée et intuitive pour faciliter la gestion des données personnelles.

---
## Video Demonstration



https://github.com/user-attachments/assets/e7924f19-df16-45f4-be0c-cd3156369a98



## Fonctionnalités
- **Téléchargement d'image** : L'utilisateur peut télécharger une image de sa pièce d'identité (ID) via l'application.
- **Extraction automatique des données** : Les informations importantes telles que le nom, la date de naissance, le numéro d'identité, etc., sont extraites automatiquement.
- **Vérification et modification des données** : Les utilisateurs peuvent visualiser les informations extraites et les corriger si nécessaire.
- **Notifications en cas d'échec** : L'utilisateur est informé si l'extraction des données échoue, avec des suggestions pour réessayer (par exemple, fournir une image plus claire).
- **Multiplateforme** : L'application est disponible sur Android et iOS, avec une interface intuitive adaptée aux deux systèmes.

---

## Technologies utilisées
- **Frontend** : Flutter pour le développement d'applications mobiles.
- **OCR** : Utilisation de packages Flutter tels que `firebase_ml_vision` ou `tesseract_ocr` pour extraire les données depuis l'image.
- **Base de données** :  un backend spring boot  pour stocker les informations des utilisateurs.
- **Notifications** : Firebase Cloud Messaging (FCM) pour les alertes et les notifications.

---

## Installation
### Prérequis
- Flutter SDK
- Android Studio ou Visual Studio Code
- Un émulateur Android ou iOS, ou un appareil physique.




## Contributeurs

Ce projet a été développé avec la contribution de :
- [**Salma Daigham**](https://github.com/salmasd5)(chef de project)
- [**Imane Tahri**](https://github.com/imanetahri123)
- [**Zakaria Zinaoui**](https://github.com/zakariaZinaOui)
- [**Abid Hanane**](https://github.com/hananabid24)
- [**Salma Farkhane**](https://github.com/salmafar)
- [**Zyad Eloussoul**](https://github.com/zyadeloussoul)
- [**Elbelaj Hamza**](https://github.com/hamzaelbellaj)





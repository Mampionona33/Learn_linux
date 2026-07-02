### 📂 Navigation & infos
1. Affiche le chemin absolu du répertoire courant.  
2. Affiche ton nom d’utilisateur courant.  

### 📁 Gestion fichiers
3. Liste les fichiers du répertoire avec taille humaine.  
4. Copie `auth.log` vers `auth_test.log`.  
5. Supprime `README.md`.  
6. Renomme `mock_log.sh` en `script.sh`.  
7. Crée un dossier `backup_logs`.  
8. Change les permissions de `auth_copy.log` pour lecture seule.  
9. Change le propriétaire de `auth_copy.log` vers un autre utilisateur.  
10. Change le groupe propriétaire de `auth.log` vers `users`.  
11. Vide le contenu de `auth_copy.log`.  
12. Découpe `auth.log` en morceaux de 2 Ko.  

### 🔍 Recherche & filtres
13. Trouve tous les fichiers contenant “log” dans leur nom.  
14. Utilise un joker `*` pour afficher tous les fichiers `.log`.  
15. Utilise `?` pour afficher les fichiers dont le nom a 3 lettres.  
16. Utilise `[]` pour afficher les fichiers commençant par `a` ou `m`.  
17. Crée plusieurs fichiers avec `{1..3}` et vérifie leur présence.  
18. Redirige les erreurs d’une commande vers `/dev/null`.  

### 📑 Comparaison
19. Compare `auth.log` et `auth_copy.log` avec `diff`.  
20. Compare les deux fichiers avec `cmp`.  

### 🧾 Traitement texte
21. Extrait la colonne des utilisateurs dans `auth.log`.  
22. Affiche la date et l’utilisateur avec `awk`.  
23. Recherche toutes les lignes contenant “Refused”.  
24. Trie les lignes contenant “Accepted”.  
25. Affiche les utilisateurs uniques avec compteur.  
26. Compte le nombre de lignes dans `auth.log`.  
27. Remplace “Refused” par “Denied”.  
28. Supprime la 3ᵉ ligne du fichier.  
29. Affiche uniquement les 5 premières lignes.  
30. Remplace les nombres en début de ligne par “X”.  

### 📜 Affichage
31. Affiche le contenu de `auth.log`.  
32. Parcours `auth.log` avec `less`.  
33. Suis en temps réel les ajouts dans `auth.log`.  

### ✍️ Édition
34. Ouvre `auth.log` dans `vi`.  
35. Écris une ligne dans un fichier avec `>`.  
36. Ajoute une ligne à un fichier avec `>>`.  
37. Écris une sortie dans un fichier et l’affiche en même temps avec `tee`.  

### 📦 Archives & compression
38. Liste le contenu de `archive_tar.tar`.  
39. Compresse `auth_copy.log` avec gzip.  
40. Compresse `auth_copy.log` avec bzip2.  
41. Compresse `auth_copy.log` avec xz.  
42. Crée une archive zip avec `auth.log` et `auth_copy.log`.  
43. Décompresse une archive zip.  

### 📚 Aide
44. Affiche la description de `ls`.  
45. Affiche l’aide de `ls`.  
46. Affiche le manuel de `ls`.  

### 👤 Utilisateurs & groupes
47. Crée un utilisateur test.  
48. Crée un utilisateur interactif.  
49. Change le mot de passe d’un utilisateur.  
50. Affiche les infos UID/GID d’un utilisateur.  
51. Supprime un utilisateur et son home.  
52. Ajoute un utilisateur à un groupe.  
53. Supprime un utilisateur avec `deluser`.  
54. Supprime un utilisateur et son home avec `deluser`.  
55. Supprime tous ses fichiers avec `deluser`.  
56. Supprime un groupe avec `deluser`.  
57. Retire un utilisateur d’un groupe.  
58. Crée un groupe.  
59. Change le groupe propriétaire d’un fichier.  

### 🔗 Liens
60. Crée un lien solide vers `auth.log`.  
61. Crée un lien symbolique vers `auth.log`.  

### 📂 Fichiers système
62. Affiche le contenu de `/etc/passwd`.  
63. Affiche le contenu de `/etc/group`.  
64. Affiche le contenu de `/etc/shadow`.  

### 💽 Disques
65. Liste les disques et partitions.  
66. Lance `fdisk` sur un disque.  
67. Lance `parted` sur un disque.  
68. Formate une partition en ext4.  
69. Monte une partition dans `/mnt/test`.  
70. Démonte la partition.  
71. Affiche l’espace disque utilisé.  
72. Affiche la taille de `auth.log`.  
73. Vérifie un système de fichiers avec `fsck`.  
74. Vérifie l’état SMART d’un disque.  

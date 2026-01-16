
---

## 2. Description des composants

1. **GitHub Repository**  
   - Contient le code source de l’application Node 18.  
   - Chaque push déclenche le pipeline CI/CD.

2. **Pipeline CI/CD**  
   - **Build** : construction de l’image Docker Node 18.  
   - **Test** : exécution des tests unitaires et vérification du code.  
   - **Push** : l’image Docker est poussée sur Docker Hub ou AWS ECR.  
   - **Deploy** : Terraform applique l’infrastructure sur AWS (EC2, Security Group, Auto Scaling, Load Balancer).  

3. **Docker & Node 18**  
   - Conteneur contenant l’application Node.  
   - Expose le port 8080 pour l’API `Hello World`.  

4. **AWS EC2 + Auto Scaling Group (ASG)**  
   - Plusieurs instances EC2 peuvent être créées automatiquement pour gérer le trafic.  
   - Assure la **haute disponibilité** et la **tolérance aux pannes**.  

5. **Elastic Load Balancer (ALB)**  
   - Répartit le trafic entrant sur toutes les instances disponibles.  
   - Permet d’accéder à l’application via une seule URL publique.

---

## 3. Endpoint de l’API

- URL : `http://<EC2_Public_IP>:8080`  
- Réponse : `Hello World`

---

## 4. Avantages de cette architecture

- **CI/CD automatisé** : déploiement rapide à chaque mise à jour du code.  
- **Scalabilité horizontale** : plus d’instances ajoutées automatiquement si la charge augmente.  
- **Haute disponibilité** : l’application reste disponible même si une instance tombe.  
- **Isolation via Docker** : l’environnement est identique en dev et prod.

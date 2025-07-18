### 🧪 LocalStack : C’est quoi ?

**LocalStack** est un **simulateur local des services AWS**.
Il te permet de **développer, tester et déboguer** des applications cloud **en local**, **sans avoir besoin de te connecter à AWS**.

---

## 🧩 À quoi ça sert concrètement ?

Tu peux **émuler des services AWS** sur ta machine locale comme :

* 🗃️ **S3** – stockage de fichiers
* 🐘 **DynamoDB** – base NoSQL
* 📬 **SQS** – file de messages
* 📨 **SNS** – notifications
* 🧠 **Lambda** – fonctions serverless
* ☁️ **API Gateway**
* 🔐 **IAM**, **STS**
* 🔧 Et plein d'autres...

Cela te permet de :

* développer plus vite (pas besoin de déployer sur le cloud)
* tester sans frais
* ne pas dépendre d’une connexion Internet ou de ton compte AWS

---

## ⚙️ Exemple d'utilisation

Tu peux lancer LocalStack avec Docker :

```bash
docker run --rm -it -p 4566:4566 -p 4571:4571 localstack/localstack
```

Ensuite, tu utilises les **mêmes SDK AWS** que d’habitude (Boto3, AWS CLI, Terraform, etc.), **mais tu les pointes vers LocalStack** au lieu de AWS.

Par exemple en Python :

```python
import boto3

s3 = boto3.client('s3', endpoint_url='http://localhost:4566')
s3.create_bucket(Bucket='my-bucket')
```

---

## 🧪 Cas d’usage typiques

| Cas d'usage                             | LocalStack est utile ? |
| --------------------------------------- | ---------------------- |
| Tester une Lambda sans AWS              | ✅                      |
| Simuler un S3 pour stocker des fichiers | ✅                      |
| Déployer via Terraform en local         | ✅                      |
| Faire des tests CI/CD sans frais AWS    | ✅                      |
| Héberger un site réel en production     | ❌                      |

---

## 📦 Version gratuite vs payante

* **Gratuit** (open source) : services de base comme S3, SQS, DynamoDB, Lambda
* **Pro** (payant) : supporte plus de services AWS (Aurora, KMS, EKS, etc.) et des fonctionnalités avancées

---

## 🧠 En résumé

| 🔹  | LocalStack                          |
| --- | ----------------------------------- |
| 🛠️ | Simulateur local d’AWS              |
| 🎯  | Dev/test sans AWS                   |
| ⚙️  | Compatible SDK AWS                  |
| 🚫  | Pas fait pour la prod               |
| 🧪  | Idéal pour tests unitaires ou CI/CD |


## LocalStack CLI
brew install localstack/tap/localstack-cli
## Alternative
  #You may download the binary for your architecture using the link below:
	https://github.com/localstack/localstack-cli/releases/download/v3.8.0/localstack-cli-3.8.0-darwin-amd64-onefile.tar.gz
	#cor use the following curl command:
	curl --output localstack-cli-3.8.0-darwin-amd64-onefile.tar.gz \
	    --location https://github.com/localstack/localstack-cli/releases/download/v3.8.0/localstack-cli-3.8.0-darwin-amd64-onefile.tar.gz
	# Then extract the LocalStack CLI from the terminal:
	sudo tar xvzf localstack-cli-3.8.0-darwin-*-onefile.tar.gz -C /usr/local/bin
	
## Alertnative 
  ### LocalStack Desktop :
    => https://docs.localstack.cloud/getting-started/installation/#localstack-desktop
    # Get a desktop experience and work with your local LocalStack instance via the UI.

  ### LocalStack Docker Extension :
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=via%20the%20UI.-,LocalStack%20Docker%20Extension,-Use%20the%20LocalStack
    # Use the LocalStack extension for Docker Desktop to work with your LocalStack instance.

  ### Docker-Compose :
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=your%20LocalStack%20instance.-,Docker%2DCompose,-Use%20Docker%20Compose
    # Use Docker Compose to configure and start your LocalStack Docker container.

  ### Docker : 
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=LocalStack%20Docker%20container.-,Docker,-Use%20the%20Docker
    # Use the Docker CLI to manually start the LocalStack Docker container.

  ### Helm : 
    => https://docs.localstack.cloud/getting-started/installation/#localstack-docker-extension:~:text=LocalStack%20Docker%20container.-,Helm,-Use%20Helm%20to
    # Use Helm to create a LocalStack deployment in a Kubernetes cluster.

## Check
localstack --version
#3.8.0

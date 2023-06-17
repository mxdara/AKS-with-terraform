# Provisioning AKS cluster using Terrafrom via Service Principle

In this project, I will be creating AKS cluster by using service principle. kubeconfig and service principle will be generated after the terraform plan and secret will be upload to keyvault to be used further.

## Below resources will be created using this terraform configuration:-
- Resource Group
- Service Principle
- AKS cluster using the SPN
- Azure key vault to store the client secret
- Secret uploaded to key vault
- kubeconfig for AKS

## Usage

### 1. login to the CLI
```shell
az login --use-device-code
```

### 2. set alias
```shell
alias tf=terraform
```

### 3. initialize the providers
```shell
tf init
```

### 4. Run the plan
```shell 
tf apply --auto-approve
```

## Resolution
the user should have keyvault admin role even if the user has owner role.
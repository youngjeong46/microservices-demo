<p align="center">
<img src="src/frontend/static/icons/Hipster_HeroLogoCyan.svg" width="300" alt="Online Boutique" />
</p>


![Continuous Integration](https://github.com/GoogleCloudPlatform/microservices-demo/workflows/Continuous%20Integration%20-%20Master/Release/badge.svg)


**Online Boutique** is a cloud-native microservices demo application.
Online Boutique consists of a 10-tier microservices application. The application is a
web-based e-commerce app where users can browse items,
add them to the cart, and purchase them.

> **THIS IS A FORKED VERSION TO ADAPT TO AMAZON EKS. PLEASE SEE [here](https://github.com/GoogleCloudPlatform/microservices-demo) for the 
> original repo.**

## Screenshots

| Home Page                                                                                                         | Checkout Screen                                                                                                    |
| ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [![Screenshot of store homepage](./docs/img/online-boutique-frontend-1.png)](./docs/img/online-boutique-frontend-1.png) | [![Screenshot of checkout screen](./docs/img/online-boutique-frontend-2.png)](./docs/img/online-boutique-frontend-2.png) |

## Quickstart (EKS)

1. Clone this repo.
   
```bash
git clone https://github.com/youngjeong46/microservices-demo
cd microservices-demo
```
2. Set your environment variables:
```bash
export CLUSTER_NAME=<name of your cluster>
export AWS_REGION=<AWS Region of your choice>
export AWS_ACCOUNT_ID=<AWS Account ID>
```
3. Run the shell script

```bash
chmod +x aws_demo.sh
./aws_demo.sh
```
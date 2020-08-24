# OpenChain
## Introduction
OpenChain aims to empower smallholder farmers to participate in global supply chains via public blockchains such as IBM Food Trust, or the Walmart or Nestle based Hyperledger models. We will do this by making it trivial for businesses to quickly and easily get started with publicly accessible blockchains (for example, using AWS's Quantum Ledger Database).
## Context
### Why?
Millions of farmers risk being marginalised as supply chains digitise. This project hopes to address this by making it trivial to include out-growers and smallholder farmers in the supply chains of tomorrow.
### History
OpenChain has been spun out of work done by [SASA](https:://sasa.solutions) in East and Southern Africa.

We have built and run a proof of concept that has shown us what is possible. That code will be migrated into the structures described here.
### Contributing
We welcome input and engagement. Whether you would like contribute code or ideas, please don't hesitate to reach out. 

## Overview
### Concepts and entities
![High level entity diagram](/notes/openchain_entities.png?raw=true)
### Persistance and Blockchains
OpenChain's default model is to store transaction records in AWS's Quantum Ledger Database (QLDB). Detailed backing data is stored a relational database, for example, in MySQL or Postgress.
### Configuration
Most configuration can be found in `openchain.rb` although AWS specific configuration (and, crucially, the database endpoint) are set in `lambdas\template.yaml`.
#### Blockchains
By default, any action (for example, an aggregation), will result in a record being stored in QLDB. This behavior can be disabled on `config/openchain.rb`the default blockchain can be changed, and specific actions can be set to write to alternative, or additional, blockchains. In this way, transactions may be included in multiple blockchains (perhaps Walmart and Nestle).

Equally, the actual fields written to the blockchain can be controlled by providing a helper class that modifies the structure.
### Deployment
This project is intended to be deployed to AWS lambda, and deployed using AWS SAM.

For the most part, deployment happens as follows:
```bash
sam build
sam deploy --guided
```
This will result in API Gateways being created, and QLDB instances provisioned (you will need to have created a database in advance of this).
### Usage without AWS
It is possible to include some of the Ruby classes. Simplest is to create symbolic links from your project to the relevant classes in this repo.
## API
Preliminary API's are available here: https://app.swaggerhub.com/apis/sasa-solutions/openchain/0.0.1
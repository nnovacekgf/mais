# Por onde começar

Vamos mostrar aqui como publicar sua tabela no BigQuery com apenas de 7
comandos de forma fácil usando nosso cliente.

## Instalando o cliente

...
<!-- TODO: add descrição aqui -->

## Salvando os dados no `storage`

```sh
$ basedosdados storage init [STORAGE_NAME] # cria o Bucket - pular caso use o basedosdados
...
$ basedosdados storage upload [STORAGE_NAME] # sobre dados no Bucket (nosso por default)
```

## Criando seu dataset local e no BigQuery

```sh
$ basedosdados dataset init [DATASET_ID] # cria o dataset no seu repositório local
...
$ basedosdados dataset create [DATASET_ID] # cria o dataset no BigQuery (?)
```

## Criando sua tabela local e no BigQuery

```sh
$ basedosdados table init [DATASET_ID] [TABLE_ID] # cria o dataset no seu repositório local
...
$ basedosdados table create [DATASET_ID] [TABLE_ID] # cria o dataset no BigQuery (?)
```

## Publicando sua tabela tratada no BigQuery

```sh
$ basedosdados table publish [DATASET_ID] [TABLE_ID] # publica o tabela no BigQuery
```
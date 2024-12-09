# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


## Custom INFO

  * Build Your First OData-Based Backend Service: https://developers.sap.com/group.scp-8-odata-service.html
    - Define a Simple Data Model and OData Service with CDS: https://developers.sap.com/tutorials/odata-05-data-model-service.html
    - Extend your Simple Data Model with a Second Entity: https://developers.sap.com/tutorials/odata-06-extend-odata-service.html
    - Extend the Built-In OData Features with Custom Code: https://developers.sap.com/tutorials/odata-07-extend-custom-code.html



# VERSION 1

PROYECT northbreeze
```bash
cds init northbreeze
cd northbreeze
cds watch
```

URL_BASE = https://port41161-workspaces-ws-XXXXX.us10.trial.applicationstudio.cloud.sap

ODATA OPERATIONS
  - First product:  [URL_BASE]/odata/v4/main/Products?$top=1
  - Count:          [URL_BASE]/odata/v4/main/Products/$count
  - Single product: [URL_BASE]/odata/v4/main/Products(2)
  - Filter:         [URL_BASE]/odata/v4/main/Products?$filter=UnitsInStock%20gt%2015

```bash
# Add a further product
curl -H "Content-Type: application/json" -d '{"ProductID":78,"ProductName":"Original Frankfurter grüne Soße","UnitsInStock":32}' http://localhost:33689/odata/v4/main/Products

# Reduce the number of units in stock for the Chang product
curl -H "Content-Type: application/json" -d '{"UnitsInStock":1}' -X PATCH "http://localhost:33689/odata/v4/main/Products(1)"

# Remove the recently added product
curl -X DELETE "http://localhost:33689/odata/v4/main/Products(77)"

```

* VERSION 2
  - [URL_BASE]/odata/v4/main
  - [URL_BASE]/odata/v4/main/Products(1)
  - [URL_BASE]/odata/v4/main/Products(1)/Category
  - [URL_BASE]/odata/v4/main/Products(1)?$expand=Category

* VERSION 3
  - [URL_BASE]/odata/v4/main/TotalStockCount()

# Control-table-using-json-columns

**Project**: Data Movement from SQL Server to Azure SQL Database and ADLS using Control Table(using json columns) in Azure Data Factory

Designed and implemented an ELT solution to copy data from multiple SQL Server tables to Azure SQL Database and Azure Data Lake Storage (ADLS) using Azure Data Factory (ADF).
Configured Linked Services and Datasets:

Create Linked Service that connects to ADLS, call it as ls_adls

Create Linked Service that connects to Azure SQL Database (ls_azuresqldb)

Create Linked Service that connects to on-prem SQL server call it as SqlServer1

Create Linked Service that connects to AzureKeyVault, call it as ls_keyvault

I have store the password for both ssms and AzureSqlDataBase in AzureKeyVault

Create a dataset that connect to ADLS, call it as ds_adls

Create a dataset that that use Azure SQL database call it as ds_azure_sql_db

Create a dataset that use SQL Server management Studio (SSMS) call it ds_ssms.

Once after Linked Service & datasets created, create pipeline using the existing Linked Services and datasets.

Developed pipeline pl_ssms_adls to copy data from OnPrem SQL Server to ADLS.

Developed another pipeline pl_ssms_azure_sql_db to copy data from SQL Server to Azure SQL Database.

Created Parent pipeline using activities like, Lookup, ForEach, and switch activities to implement dynamic flow based on a control table settings :

A Control table is used to dynamically change the flow of the pipeline.

One of the important columns in the control table is type, which determines which child pipeline should be executed.

**Switch Activity**:Inside the ForEach activity, a Switch activity is used to dynamically control the pipeline execution based on the type column from the control table.

The Switch expression used is:@item().type

This expression evaluates the value of the type column for the current row.

Case Conditions:Based on the value of type, different child pipelines are executed.

Case: ssms-storage

If the type value is ssms-storage, the Switch activity triggers an Execute Pipeline activity that runs the child pipeline:pl_ssms_adls

Case: ssms-adls

If the type value is ssms-adls, the Switch activity triggers another Execute Pipeline activity to run the pipeline:pl_ssms_azure_sql_db


Implemented dynamic execution using the Execute Pipeline activity to automate conditional data movement.

Pushed the solution to Git version control for source code management and collaboration.

Ensured scalable, reusable, and automated data movement with minimal manual intervention, improving data availability for analytics and reporting.

**Technologies used**:

Azure Data Factory,
SQL Server Management Studio (SSMS),
Azure SQL Database,
Azure Data Lake Storage (ADLS),
Git,
ETL,
Control Tables

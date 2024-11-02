## AdventureWorks2019

- website: https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sqlallproducts-allversions&tabs=ssms
- source: AdventureWorksLT2019.bak

## Modifications made to source

- .sql files generated from to Microsoft SQL Server 2019 (RTM-CU6) (KB4563110) - 15.0.4053.23 using mssql-scripter version 1.0.0a23
- The adventure works databases cannot exist on the same SQLServer concurrently because the .baks were generated with the same files (/var/opt/mssql/data/EmployeeCaseStudyData.mdf and /var/opt/mssql/data/AdventureWorksLT2012_log.ldf)
- To restore them I had to delete each existing db from restored .bak and then recreate individually.
- Schema name manually switched to dbo instead of SalesLT.

<img width="1287" height="577" alt="1_GXjmR0-ghYha9IEMdgpLyg" src="https://github.com/user-attachments/assets/1bd1cb2f-e766-49c3-812a-b781462bdd9d" />

###  Data Lake | Kubernetes ☸️
Apache Airflow is an open-source workflow orchestration platform used to programmatically author, schedule, and monitor data pipelines or other workflows.


#### 🧱 Architecture Overview :
   - **MinIO (S3 Storage):**: Used for storing raw data files.
   - **Apache Iceberg**: (Table Format): Acts as the table format layer, enabling versioned data and schema evolution
   - **Trino (SQL Engine)**: Provides a unified interface for querying raw and transformed data.
   - **PostgreSQL**: Serves as the data catalog for our data lake.
   - **Apache Airflow**: Orchestrates the entire workflow from data ingestion to transformation and querying.
   - **dbt**: Handles data transformations within a PostgreSQL database.



🎯 Typical Use Cases
```
ETL (Extract, Transform, Load) pipelines
Data warehouse updates (e.g., nightly batch jobs)
Machine learning model training and deployment workflows
Automating business reports
Coordinating complex cloud operations
```

🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

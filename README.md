<img width="1287" height="577" alt="1_GXjmR0-ghYha9IEMdgpLyg" src="https://github.com/user-attachments/assets/1bd1cb2f-e766-49c3-812a-b781462bdd9d" />

###  Data Lake | Kubernetes ☸️
Build an end-to-end data lake ELT (Extract, Load, Transform) pipeline using a modern tech stack. The setup includes MinIO, Apache Iceberg, Trino, dbt, PostgreSQL and Apache Airflow for orchestration. This stack uses open source tools and provide modularity, and ability to streamline data querying, making it suitable for modern data engineering workflows


#### 🧱 Architecture Overview :
   - **MinIO (S3 Storage):**: Used for storing raw data files.
   - **Apache Iceberg**: (Table Format): Acts as the table format layer, enabling versioned data and schema evolution
   - **Trino (SQL Engine)**: Provides a unified interface for querying raw and transformed data.
   - **PostgreSQL**: Serves as the data catalog for our data lake.
   - **Apache Airflow**: Orchestrates the entire workflow from data ingestion to transformation and querying.
   - **dbt**: Handles data transformations within a PostgreSQL database.



🎯 Pipeline Workflow
```
1. Data Storage (MinIO)
2. Table Format & Schema Evolution (Iceberg) warehouse updates (e.g., nightly batch jobs)
3. Distributed SQL engine (Trino)chine learning model training and deployment workflows
4. Iceberg Catalog (Postgres + S3)
5. Orchestrating the Workflow with Apache Airflow
```

🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

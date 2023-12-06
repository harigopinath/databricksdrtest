#Install the databricks-cli if it is not already installed
pip install databricks-cli
#configure the databricks connection by providing the workspace URL and token (PAT)
databricks configure --token
#Get the terraform exporter code
wget https://github.com/databricks/terraform-provider-databricks/releases/download/v1.27.0/terraform-provider-databricks_1.27.0_darwin_amd64.zip
#Unzip the downloaded folder
unzip terraform-provider-databricks_1.27.0_darwin_amd64.zip
#Run the terraform exporter script
./terraform-provider-databricks_v1.27.0 exporter -directory output -skip-interactive
#Import the terraform script
cd output
terraform init
./import.sh

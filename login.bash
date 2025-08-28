tenant="<tenantid>"
subscription="<subscriptionid>"
host="<databricks-host>"
credential_name="<credential-name>"
application_id="<application-id>"
client_secret="<client-secret>"

# 認証情報のセット
az login --tenant "${tenant}"
az account set --subscription "${subscription}"

databricks auth login --host ${host}

databricks storage-credentials create --json "{\"name\": \"${credential_name}\", \"azure_service_principal\": {\"directory_id\": \"${tenant}\", \"application_id\": \"${application_id}\", \"client_secret\": \"${client_secret}\"}}"

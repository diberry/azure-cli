# https://learn.microsoft.com/en-us/azure/cosmos-db/nosql/how-to-grant-control-plane-access?tabs=built-in-definition%2Ccsharp&pivots=azure-interface-cli
# in code spaces: az login --tenant 888d76fa-54b2-4ced-8ee5-aac1585adee7
# make executable: chmod +x /workspaces/azure-cli/scripts/cosmos_db/add-data-plane-rbac.sh

RESOURCE_GROUP=rg-diberry

USER_ID=$(az ad signed-in-user show --query id -o tsv)

RESOURCE_GROUP_ID=$(az group show --name "$RESOURCE_GROUP" --query id -o tsv)

ROLE_ID=$(az role definition list --name "Cosmos DB Operator" --query "[].id" -o tsv)

az role assignment create --assignee "$USER_ID" --role "$ROLE_ID" --scope "$RESOURCE_GROUP_ID"
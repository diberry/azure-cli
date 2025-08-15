timestamp=$(date +%Y%m%d%H%M%S)
RESOURCE_GROUP="rg-diberry"
IDENTITY_NAME="diberry-user-assigned-managed-identity-${timestamp}"

az identity create --resource-group $RESOURCE_GROUP --name $IDENTITY_NAME --query 'clientId' --output json

#az identity show --resource-group "$RESOURCE_GROUP" --name "$IDENTITY_NAME" --output json

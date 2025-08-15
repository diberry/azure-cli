SUBSCRIPTION=""
RESOURCE_GROUP="rg-diberry"
STORAGE_ACCOUNT_NAME="diberrystor3"

IDENTITY=""
ROLE_NAME="Storage Blob Data Contributor"
SCOPE="/subscriptions/$SUBSCRIPTION/resourceGroups/$RESOURCE_GROUP/providers/Microsoft.Storage/storageAccounts/$STORAGE_ACCOUNT_NAME"

az role assignment create \
    --assignee "$IDENTITY" \
    --role "$ROLE_NAME" \
    --scope "$SCOPE"
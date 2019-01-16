az
az vm create   --name Ricardo --resource-group cloud-shell-storage-westeurope --location westeurope --size Standard_DS2_v2   --admin-username ricardo --generate-ssh-keys
az vm create   --name Ricardo   --resource-group cloud-shell-storage-westeurope   --image UbuntuLTS   --location westeurope   --size Standard_DS2_v2   --admin-username ric   --generate-ssh-keys
az vm get-instance-view   --name Ricardo   --resource-group cloud-shell-storage-westeurope   --output table
az vm extension set   --resource-group cloud-shell-storage-westeurope   --vm-name Ricardo   --name customScript   --publisher Microsoft.Azure.Extensions   --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"]}'   --protected-settings '{"commandToExecute": "./configure-nginx.sh"}'
az vm open-port   --name Ricardo   --resource-group cloud-shell-storage-westeurope   --port 80
az vm show   --name Ricardo   --resource-group cloud-shell-storage-westeurope   --show-details   --query [publicIps]   --output tsv
az vm show   --resource-group cloud-shell-storage-westeurope   --name Ricardo   --query "hardwareProfile"   --output tsv
az vm resize   --resource-group cloud-shell-storage-westeurope   --name Ricardo   --size Standard_DS3_v2
git init
git add

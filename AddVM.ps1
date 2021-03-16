#Azure CLI for quickly creating a virtual machine

#az vm create --resource-group test-grp --name demovm2 --image win2019datacenter --admin-username demousr --admin-password AzurePortal@123

#PowerShell command for quickly creating a virtual machine

New-AzVm -ResourceGroupName test-grp -Name demovm3 -Location CentralUS -Image win2019datacenter

$resourceGroupName = "learn-0111689a-1f54-41fd-977b-dd6347b0f213"
$location          = "westus"
$provisioningState = "Succeeded"
$machineName = "az104linux"
$storageTpe = 'Standard_LRS'
$dataDiskName = 'az104disk1'
$dataDiskSize = 20


$vm = Get-AzVm -Name $machineName -ResourceGroupName $resourceGroupName

$dataDiskConfig = New-AzDiskConfig -SkuName Standard_LRS -Location $location -CreateOption Empty -DiskSizeGB $dataDiskSize
$dataDisk01 = New-AzDisk -DiskName $dataDiskName -Disk $dataDiskConfig -ResourceGroupName $resourceGroupName
Add-AzVMDataDisk -VM $vm -Name $dataDiskName -CreateOption Attach -ManagedDiskId $dataDisk01.Id -Lun 01


Update-AzVm -Vm $vm -ResourceGroupName $resourceGroupName

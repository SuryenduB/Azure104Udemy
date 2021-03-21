New-AzRoleDefinition -InputFile "customrole.json"

New-AzRoleAssignment -ResourceGroupName azuredemo -SignInName demousrA@techsup1000gmail.onmicrosoft.com -RoleDefinitionName "stagingrole"

## Cria uma variavael com o conteudo do arquivo CSV
$CSV = Import-Csv -path "d:\Scripts\Atributos Gerentes AD\manager_ad.csv"


## %%%Aplicar alterações no AD, baseado no arquivo CSV montado ##
$CSV | ForEach-Object { Set-ADUser -identity $_.sAMAccountName -Manager $_.Manager }
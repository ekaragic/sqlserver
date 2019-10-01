param(
    $ServerIp = "",
    $DatabaseName = "",
    $User = "",
    $Password = "",
    $ScriptPath = "E:\code\sqlserver\CreateTableInsertRecord.sql"
)

$ConnectionString = "Server=" + $ServerIp + ";Database="  + $DatabaseName + ";User ID= "  + $User + ";Password="  + $Password + ";"

$SQLConnection = New-Object System.Data.SqlClient.SqlConnection
$SQLConnection.ConnectionString = $ConnectionString
$SQLConnection.Open()

$SQLCommandText = @(Get-Content -Path $ScriptPath -Raw)
Write-Host "Command:" $SQLCommandText

$SQLCommand = New-Object System.Data.SqlClient.SqlCommand($SQLCommandText, $SQLConnection) 
$SQLCommand.ExecuteScalar()

Write-Host "Finished"
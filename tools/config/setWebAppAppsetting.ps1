$Group = "Reception"
$Name = "reception-web"

$AuthKey = "QRHyXjdI5L4PwEW6G34qQZG2zrDTq6hnQa44XGPxH9qx3QWPsDxEYlxY5wCb6iLdm9TlI8sPnUVrwJ0RjsT50g=="
$RecordAuthKey = "7XZZFsQHROqPnn9FYBDPvBuRHHQ3B3RKkTEHWFOv3Q7HRGtZG7Vcpb1CBxHAWrbKa8kyWDBm0mtT5xdu02NLgw=="
$EndPoint = "https://reception-cosmos-db.documents.azure.com:443/"
$RecordEndPoint="https://reception-cosmos-db-record.documents.azure.com:443/"
$WebDomain = "reception-web.azurewebsites.net"
$FunctionHttpDomain = "https://reception.azurewebsites.net/api/"
$FunctionHttpDomainBase = "https://reception.azurewebsites.net"
$FunctionHttpHostCode = "NcpxBnwI2rGwvH3I4KvSVhQX/Q0PdfkjhSBZKsT1BAD7mNX2ZpSTvg=="
$APPINSIGHTS_INSTRUMENTATIONKEY="12823d56-80ef-43ba-9bb5-63c5620605db"
$StorageConnectionString = "DefaultEndpointsProtocol=https;AccountName=receptionstorage;AccountKey=sd7qhaVGd6EkTcB0W+9e6nKfnRwQKelgeoOoFTZkdAhT1B/PyIsb85d5NjuJr6DmJ8/fnMI1vnGbyBTah9ChzQ==;EndpointSuffix=core.windows.net"
$Debug = "ON"

$RecordAuthKeyStr = "RecordAuthKey="+$RecordAuthKey
$AuthKeyStr = "AuthKey="+$AuthKey
$CosmosDBEndPointStr = "CosmosDBEndPoint="+$EndPoint
$RecordEndPointStr = "RecordEndPoint="+$RecordEndPoint

$DebugStr = "Debug="+$Debug
$MailSenderStr = "MailSender=RICOH_Resource_Booking_Service@rb-service.ricoh.com"
$SlotNameStr = "SlotName=reception"
$DatabaseIdStr = "DatabaseId=persian-cosmos-db"
$LogErrorSlackReceiverTokenStr = "LogErrorSlackReceiverToken=xoxp-253816071536-296837560390-312645732272-750fb05eef968aa51fab9b4e9959af57"
$FunctionHttpDomainStr = "FunctionHttpDomain="+$FunctionHttpDomain
$MsteamsClientIdStr = "MsteamsClientId=2d0fe312-9992-43bb-9616-57226d8b351e"
$APPINSIGHTS_INSTRUMENTATIONKEYStr = "APPINSIGHTS_INSTRUMENTATIONKEY="+$APPINSIGHTS_INSTRUMENTATIONKEY
$StorageConnectionStringStr = "StorageConnectionString="+$StorageConnectionString
$SendGridKeyStr = "SendGridKey=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"
$WebDomainStr = "WebDomain="+$WebDomain
$And = '"&"'
$MailCallbackUrlStr = "MailCallbackUrl="+$FunctionHttpDomain+"Func_Mail_Feedback?code="+$FunctionHttpHostCode+$And
$FunctionHttpHostCodeStr = "FunctionHttpHostCode="+$FunctionHttpHostCode
$FUNCTIONS_EXTENSION_VERSIONStr = "FUNCTIONS_EXTENSION_VERSION=~1"

$EnvironmentTitleStr = "EnvironmentTitle=(開発環境)"
$google_aPIClientIDStr = "google_aPIClientID=385099296778-avkkpv9i2gc64o9rfj7gclgva4v0evf3.apps.googleusercontent.com"
$google_clientNameStr = "google_clientName=106013397572801424512"
$line_bindStepGroupStr = "line_bindStepGroup=LineGroupBindStep_dev_"
$line_bindStepSingleStr = "line_bindStepSingle=LineGroupBindStep_dev_"
$line_channelAccessTokenStr = "line_channelAccessToken=EvbPTiNGrwnDB5lsZ3Z4P9cdHPJm3D1aUMDWR70iEjgPrK3K3rysqjBgu4GBWB7M3sI0YRwJvQez1mcuMPqI4JmGFAj8g28L/qq159tsq30h69c6ure8UYAb7z9oih3RXIJOw7PowwJposXo/3G5wQdB04t89/1O/w1cDnyilFU="
$MobileAppsManagement_EXTENSION_VERSIONStr = "MobileAppsManagement_EXTENSION_VERSION=latest"
$msTeams_botAppIdStr = "msTeams_botAppId=2d0fe312-9992-43bb-9616-57226d8b351e"
$msTeams_downloadFileStr = "msTeams_downloadFile=MeetingServiceBotPackage_dev.zip"
$office_clientIdStr = "office_clientId=ae0c1b23-c4d8-4779-b379-0c60491e7887"
$office_scopeStr = "office_scope=user.read"
$office_secretStr = "office_secret=zmkjEJQ~!qvaKZHX50893*;"
$office_tenantScopeStr = "office_tenantScope=https://graph.microsoft.com/.default"
$qrcode_codeStr = "qrcode_code="+$FunctionHttpHostCode
$qrcode_domainStr = "qrcode_domain="+$FunctionHttpDomainBase
$sendToGroup_codeStr = "sendToGroup_code="+$FunctionHttpHostCode
$sendToGroupUrlStr = "sendToGroupUrl="+$FunctionHttpDomainBase
$slack_botIdStr = "slack_botId=253816071536.314149166262"
$slack_botSecretStr = "slack_botSecret=2c8806139d2e68eb7b83f2a8d36cf86e"
$WEBSITE_HTTPLOGGING_RETENTION_DAYSStr = "WEBSITE_HTTPLOGGING_RETENTION_DAYS=9999" 
az webapp config appsettings set -g $Group -n $Name --settings $RecordAuthKeyStr
az webapp config appsettings set -g $Group -n $Name --settings $AuthKeyStr
az webapp config appsettings set -g $Group -n $Name --settings $CosmosDBEndPointStr
az webapp config appsettings set -g $Group -n $Name --settings $RecordEndPointStr
az webapp config appsettings set -g $Group -n $Name --settings $MailSenderStr
az webapp config appsettings set -g $Group -n $Name --settings $SlotNameStr
az webapp config appsettings set -g $Group -n $Name --settings $DatabaseIdStr
az webapp config appsettings set -g $Group -n $Name --settings $LogErrorSlackReceiverTokenStr
az webapp config appsettings set -g $Group -n $Name --settings $FunctionHttpDomainStr
az webapp config appsettings set -g $Group -n $Name --settings $APPINSIGHTS_INSTRUMENTATIONKEYStr
az webapp config appsettings set -g $Group -n $Name --settings $SendGridKeyStr
az webapp config appsettings set -g $Group -n $Name --settings $WebDomainStr
az webapp config appsettings set -g $Group -n $Name --settings $MailCallbackUrlStr
az webapp config appsettings set -g $Group -n $Name --settings $FunctionHttpHostCodeStr
az webapp config appsettings set -g $Group -n $Name --settings $EnvironmentTitleStr
az webapp config appsettings set -g $Group -n $Name --settings $google_aPIClientIDStr
az webapp config appsettings set -g $Group -n $Name --settings $google_clientNameStr
az webapp config appsettings set -g $Group -n $Name --settings $line_bindStepGroupStr
az webapp config appsettings set -g $Group -n $Name --settings $line_bindStepSingleStr
az webapp config appsettings set -g $Group -n $Name --settings $line_channelAccessTokenStr
az webapp config appsettings set -g $Group -n $Name --settings $MobileAppsManagement_EXTENSION_VERSIONStr
az webapp config appsettings set -g $Group -n $Name --settings $msTeams_botAppIdStr
az webapp config appsettings set -g $Group -n $Name --settings $msTeams_downloadFileStr
az webapp config appsettings set -g $Group -n $Name --settings $office_clientIdStr
az webapp config appsettings set -g $Group -n $Name --settings $office_scopeStr
az webapp config appsettings set -g $Group -n $Name --settings $office_secretStr
az webapp config appsettings set -g $Group -n $Name --settings $office_tenantScopeStr
az webapp config appsettings set -g $Group -n $Name --settings $qrcode_codeStr
az webapp config appsettings set -g $Group -n $Name --settings $qrcode_domainStr
az webapp config appsettings set -g $Group -n $Name --settings $sendToGroup_codeStr
az webapp config appsettings set -g $Group -n $Name --settings $sendToGroupUrlStr
az webapp config appsettings set -g $Group -n $Name --settings $slack_botIdStr
az webapp config appsettings set -g $Group -n $Name --settings $slack_botSecretStr
az webapp config appsettings set -g $Group -n $Name --settings $WEBSITE_HTTPLOGGING_RETENTION_DAYSStr
az webapp config appsettings set -g $Group -n $Name --settings $DebugStr

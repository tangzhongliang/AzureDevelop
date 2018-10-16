$Group = "Reception"
$Name = "reception"

$AuthKey = "QRHyXjdI5L4PwEW6G34qQZG2zrDTq6hnQa44XGPxH9qx3QWPsDxEYlxY5wCb6iLdm9TlI8sPnUVrwJ0RjsT50g=="
$RecordAuthKey = "7XZZFsQHROqPnn9FYBDPvBuRHHQ3B3RKkTEHWFOv3Q7HRGtZG7Vcpb1CBxHAWrbKa8kyWDBm0mtT5xdu02NLgw=="
$EndPoint = "https://reception-cosmos-db.documents.azure.com:443/"
$RecordEndPoint="https://reception-cosmos-db-record.documents.azure.com:443/"
$WebDomain = "reception-web.azurewebsites.net"
$FunctionHttpDomain = "https://reception.azurewebsites.net/api/"
$FunctionHttpHostCode = "NcpxBnwI2rGwvH3I4KvSVhQX/Q0PdfkjhSBZKsT1BAD7mNX2ZpSTvg=="
$APPINSIGHTS_INSTRUMENTATIONKEY="12823d56-80ef-43ba-9bb5-63c5620605db"
$StorageConnectionString = "DefaultEndpointsProtocol=https;AccountName=receptionstorage;AccountKey=sd7qhaVGd6EkTcB0W+9e6nKfnRwQKelgeoOoFTZkdAhT1B/PyIsb85d5NjuJr6DmJ8/fnMI1vnGbyBTah9ChzQ==;EndpointSuffix=core.windows.net"
$Debug = "ON"

$RecordAuthKeyStr = "RecordAuthKey="+$RecordAuthKey
$AuthKeyStr = "AuthKey="+$AuthKey
$CosmosDBEndPointStr = "CosmosDBEndPoint="+$EndPoint
$RecordEndPointStr = "RecordEndPoint="+$RecordEndPoint
$GoogleNotificationUrlStr = "GoogleNotificationUrl="+$FunctionHttpDomain+"notifications"

$MsteamsClientSecretStr = "MsteamsClientSecret=nacqxFWHE5%]@ciRLH7969?"
$MailSenderStr = "MailSender=RICOH_Resource_Booking_Service@rb-service.ricoh.com"
$SlotNameStr = "SlotName=reception"
$CinAutoCancelStr = "CinAutoCancel=ON"
$DatabaseIdStr = "DatabaseId=persian-cosmos-db"
$LogErrorSlackReceiverTokenStr = "LogErrorSlackReceiverToken=xoxp-253816071536-296837560390-312645732272-750fb05eef968aa51fab9b4e9959af57"
$FunctionHttpDomainStr = "FunctionHttpDomain="+$FunctionHttpDomain
$MsteamsClientIdStr = "MsteamsClientId=2d0fe312-9992-43bb-9616-57226d8b351e"
$APPINSIGHTS_INSTRUMENTATIONKEYStr = "APPINSIGHTS_INSTRUMENTATIONKEY="+$APPINSIGHTS_INSTRUMENTATIONKEY
$StorageConnectionStringStr = "StorageConnectionString="+$StorageConnectionString
$Office365NotificationUrlStr = "Office365NotificationUrl="+$FunctionHttpDomain+"ewsnotifications"
$Office365BotClientSecretStr = "Office365BotClientSecret=rlndTFAHN43;@blpPB904:#"
$ImageCodeStr = "ImageCode="+$FunctionHttpHostCode
$SendGridKeyStr = "SendGridKey=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"
$Office365BotClientIdStr = "Office365BotClientId=3e51584a-d849-44e8-8c2b-e38c45986112"
$WebDomainStr = "WebDomain="+$WebDomain
$LinebotSecretStr = "LinebotSecret=9caef91695ecffc29257c275961d4538"
$LinebotAccessTokenStr = "LinebotAccessToken=EvbPTiNGrwnDB5lsZ3Z4P9cdHPJm3D1aUMDWR70iEjgPrK3K3rysqjBgu4GBWB7M3sI0YRwJvQez1mcuMPqI4JmGFAj8g28L/qq159tsq30h69c6ure8UYAb7z9oih3RXIJOw7PowwJposXo/3G5wQdB04t89/1O/w1cDnyilFU="
$And = '"&"'
$MailCallbackUrlStr = "MailCallbackUrl="+$FunctionHttpDomain+"Func_Mail_Feedback?code="+$FunctionHttpHostCode+$And
$FunctionHttpHostCodeStr = "FunctionHttpHostCode="+$FunctionHttpHostCode
$FUNCTIONS_EXTENSION_VERSIONStr = "FUNCTIONS_EXTENSION_VERSION=~1"
$DebugStr = "Debug="+$Debug
az functionapp config appsettings set -g $Group -n $Name --settings $RecordAuthKeyStr
az functionapp config appsettings set -g $Group -n $Name --settings $AuthKeyStr
az functionapp config appsettings set -g $Group -n $Name --settings $CosmosDBEndPointStr
az functionapp config appsettings set -g $Group -n $Name --settings $RecordEndPointStr
az functionapp config appsettings set -g $Group -n $Name --settings $GoogleNotificationUrlStr
az functionapp config appsettings set -g $Group -n $Name --settings $MsteamsClientSecretStr
az functionapp config appsettings set -g $Group -n $Name --settings $MailSenderStr
az functionapp config appsettings set -g $Group -n $Name --settings $SlotNameStr
az functionapp config appsettings set -g $Group -n $Name --settings $CinAutoCancelStr
az functionapp config appsettings set -g $Group -n $Name --settings $DatabaseIdStr
az functionapp config appsettings set -g $Group -n $Name --settings $LogErrorSlackReceiverTokenStr
az functionapp config appsettings set -g $Group -n $Name --settings $FunctionHttpDomainStr
az functionapp config appsettings set -g $Group -n $Name --settings $MsteamsClientIdStr
az functionapp config appsettings set -g $Group -n $Name --settings $APPINSIGHTS_INSTRUMENTATIONKEYStr
az functionapp config appsettings set -g $Group -n $Name --settings $Office365NotificationUrlStr
az functionapp config appsettings set -g $Group -n $Name --settings $Office365BotClientSecretStr
az functionapp config appsettings set -g $Group -n $Name --settings $ImageCodeStr
az functionapp config appsettings set -g $Group -n $Name --settings $SendGridKeyStr
az functionapp config appsettings set -g $Group -n $Name --settings $Office365BotClientIdStr
az functionapp config appsettings set -g $Group -n $Name --settings $WebDomainStr
az functionapp config appsettings set -g $Group -n $Name --settings $LinebotSecretStr
az functionapp config appsettings set -g $Group -n $Name --settings $LinebotAccessTokenStr
az functionapp config appsettings set -g $Group -n $Name --settings $MailCallbackUrlStr
az functionapp config appsettings set -g $Group -n $Name --settings $FunctionHttpHostCodeStr
az functionapp config appsettings set -g $Group -n $Name --settings $FUNCTIONS_EXTENSION_VERSIONStr
az functionapp config appsettings set -g $Group -n $Name --settings $DebugStr

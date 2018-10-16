nuget restore Persian_Function\Persian_Function.sln
@echo off
setlocal EnableDelayedExpansion
echo copy publish file begin
xcopy !cd!\Properties !cd!\Persian_Function\Func_CalendarEventProcessor /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_DaliyCheck /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_EWS_Notify /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_EWS_Resubscription /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_Google_Notify /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_Group /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_Line_Feedback /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_Mail_Feedback /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_MeetingRoomProcessor /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_MSTeams_Feedback /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_RefreshGoogleWatch /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_SendCancelCompleteMessage /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_SendCheckinCompleteMessage /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_SendCheckinReminderMessage /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_SendCheckoutCompleteMessage /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_SendReminderMessage /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_Slack_Feedback /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_TimerDispatcher /e /y
xcopy !cd!\Properties !cd!\Persian_Function\Func_UpdateGlobalToken /e /y
xcopy !cd!\Properties !cd!\Persian_Function\RbService /e /y
echo copy publish file end
msbuild Persian_Function\Persian_Function.sln /t:Clean /p:Configuration=Release
msbuild Persian_Function\Func_CalendarEventProcessor\Func_CalendarEventProcessor.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_DaliyCheck\Func_DaliyCheck.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_EWS_Notify\Func_EWS_Notify.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_EWS_Resubscription\Func_EWS_Resubscription.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_Google_Notify\Func_Google_Notify.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_Group\Func_Group.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_Line_Feedback\Func_Line_Feedback.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_Mail_Feedback\Func_Mail_Feedback.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_MeetingRoomProcessor\Func_MeetingRoomProcessor.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_MSTeams_Feedback\Func_MSTeams_Feedback.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_RefreshGoogleWatch\Func_RefreshGoogleWatch.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_SendCancelCompleteMessage\Func_SendCancelCompleteMessage.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_SendCheckinCompleteMessage\Func_SendCheckinCompleteMessage.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_SendCheckinReminderMessage\Func_SendCheckinReminderMessage.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_SendCheckoutCompleteMessage\Func_SendCheckoutCompleteMessage.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_SendReminderMessage\Func_SendReminderMessage.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_Slack_Feedback\Func_Slack_Feedback.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_TimerDispatcher\Func_TimerDispatcher.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\Func_UpdateGlobalToken\Func_UpdateGlobalToken.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild Persian_Function\RbService\RbService.csproj /p:Configuration=Release /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
c:
cd C:\FunctionOutput
7z a output.zip C:\FunctionOutput\*
az functionapp deployment source config-zip  -g "Persian-Develop" -n "rb-service-develop/slots/dev-stage" --src "C:\FunctionOutput\output.zip"

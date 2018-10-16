
param (
    [string]$RoomPrefix = "testx",
    [string]$RoomListPrefix = "testroomlistx",
    [int]$RoomIndex = 1,
    [int]$RoomSize = 1,
    [string]$Domain = "ritsepoq.onmicrosoft.com",
    [string]$Method = "create"
 )
 $username = "username@domain.onmicrosoft.com"
 $password = ConvertTo-SecureString -String 'password.' -AsPlainText -Force
 $commands = "Get-DistributionGroup", "New-DistributionGroup", "Remove-DistributionGroup", "Add-DistributionGroupMember","Get-Group", "Get-MailboxFolderPermission", "New-Mailbox", "Get-Mailbox", "Remove-Mailbox", "Set-Mailbox", "Set-MailboxFolderPermission", "Set-CalendarProcessing"

$UserCredential = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password
$proxysettings = New-PSSessionOption -ProxyAccessType IEConfig
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection -SessionOption $proxysettings
if($Session -eq $null){
	exit
}
import-PSSession $Session -AllowClobber -CommandName $commands
$loginTime = Get-Date
$RoomListId
$RoomId
function login{
	$now = Get-Date
	
	$nowLoginTime = New-TimeSpan $loginTime -end $now
	
	if($nowLoginTime.TotalSeconds -ge 110){
		
	    Remove-PSSession -Session $Session
		Write-Output "Please Login again $loginTime $now"
		$Session2 = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection -SessionOption $proxysettings
		Set-Variable Session $Session2 -scope 2
		$now2 = Get-Date
		Set-Variable loginTime $now2 -scope 2
		Import-PSSession $Session -AllowClobber -CommandName $commands
		Write-Output "Login success"
	}
}

function createRoomList {
    Write-Warning $RoomListId
    login
    
    $list = Get-DistributionGroup -Identity $RoomListId -ResultSize 1 -Filter "RecipientTypeDetails -eq 'RoomList'" -ErrorAction SilentlyContinue
    if($list){
    	Write-Warning "$RoomListId has been created"
    }else{
    	New-DistributionGroup -Name $RoomListId -Alias $RoomListId -RoomList
		Write-Output "$RoomListId is created completed"
    }
}
function createRoom{
    Write-Warning $RoomId 
    login
    $emailAddress = $RoomId + "@" + $Domain
    $mails = Get-Mailbox -Identity $RoomId -ErrorAction SilentlyContinue
    if($mails -eq $null){
   	  	$Error.clear
    	New-Mailbox -Name $RoomId -Alias $RoomId -Room
    }
    if(($mails.EmailAddresses -eq $null) -or ($mails.PrimarySmtpAddress -ne $emailAddress)){
    	Write-Output "set emailaddress $RoomId"
    	Set-Mailbox $RoomId -EmailAddresses $emailAddress
    }
    createRoomList -RoomListId $RoomListId
	$Group = Get-Group -Identity $RoomListId -ErrorAction SilentlyContinue
	if ($Group.Members -notcontains $RoomId){
		Write-Output "add group $RoomId"
		Add-DistributionGroupMember -Identity $RoomListId -Member $emailAddress
	}
    
}
function setRight{
	login
	$calendarIdentity = $RoomId + ":\Calendar"
	Write-Warning $calendarIdentity 
    $permission = Get-MailboxFolderPermission -Identity $calendarIdentity -User default
    if($permission -eq $null){
    	for($i=0;$i -lt 10; $i++){
    	login
		sleep 2
		Write-Output "cannt open mailbox $RoomId"
		$permission2 = Get-MailboxFolderPermission -Identity $calendarIdentity -User default
		Set-Variable permission $permission2 -scope 1
		if($permission){
		Write-Output "can open mailbox $RoomId"
		}
		}
    }
    
    if($permission.AccessRights -ne "reviewer"){
    	Set-MailboxFolderPermission -AccessRights 'reviewer' -Identity $calendarIdentity -User default
    	Set-CalendarProcessing -Identity $RoomId -DeleteSubject 0 -AddOrganizerToSubject 0 -AutomateProcessing AutoAccept
    }
}
function deleteRoomList{
    Write-Warning $RoomListId
    login
    Remove-DistributionGroup -Identity $RoomListId -confirm: $false
}
function deleteRoom{
    Write-Warning $RoomId
    login
    Remove-Mailbox -Identity $RoomId -confirm: $false
}
try{
	
	for($i = $RoomIndex ;$i -lt $RoomIndex+$RoomSize;$i++){
		$roomlistIndex = [Math]::Ceiling([decimal]($i/100))
		$PreRoomListId = $RoomListId
		$RoomListId = $RoomListPrefix + $roomlistIndex
		$RoomId = $RoomPrefix + $i
		if($Method -eq "create"){
		createRoom
		}
		if($Method -eq "delete"){
			if($PreRoomListId -ne $RoomListId){
				deleteRoomList
			}
			
			deleteRoom
		}
		if($Method -eq "right"){
			setRight
		}
		
	}
}finally{
	Remove-PSSession -Session $Session
}
Write-Output "completed"
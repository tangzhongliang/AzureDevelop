
配置账户
编辑脚本文件修改管理员用户名和密码

脚本参数说明
-Domain 	 office365域名，default:ritsepoq.onmicrosoft.com
-RoomPrefix  创建会议室名称前缀，default:testx
-RoomListPrefix 创建会议室资源组名称，default:testroomlistx

-RoomIndex 批量创建会议室的起始；default:1
-RoomSize  批量创建会议室的数量；default：1
testx{RoomIndex}@ritsepoq.onmicrosoft.com - testx{RoomIndex+RoomSize-1}@ritsepoq.onmicrosoft.com

testx{1-100}@ritsepoq.onmicrosoft.com testroomlistx1@ritsepoq.onmicrosoft.com
testx{101-200}@ritsepoq.onmicrosoft.com testroomlistx2@ritsepoq.onmicrosoft.com


打开cmd窗口
进入根目录

1.创建会议
./office365.ps1 -RoomIndex 1 -RoomSize 1 -Method 'create'
2.授予权限
./office365.ps1 -RoomIndex 1 -RoomSize 1 -Method 'right'
注意：在较多创建会议室后，Office365创建会议室的默认日历会发生延时，时间不确定，如果在创建大量会议室时，立刻授予权限会出现异常消息“cannt open mailbox”
所以建议创建会议室后延时1天授予权限，当然你可以为最后一个会议室设置权限，如果出现“cannt open mailbox”说明会议室暂时不可用，请稍候重试
3.删除会议
./office365.ps1 -RoomIndex 1 -RoomSize 1 -Method 'delete'
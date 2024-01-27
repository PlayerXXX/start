@echo off
color B0
chcp 65001
if %date:~11,1%==0 (set /a num=%date:~12,1% %% 5) else (set /a num=%date:~11,2% %% 5)
if %num%==1 (
	TITLE 今天是 %date:~3,4%年%date:~8,2%月%date:~11,2%日 星期%date:~1,1% 所有命运馈赠的礼物，都早已在暗中标好了价格
) else if %num%==2 (
	TITLE 今天是 %date:~3,4%年%date:~8,2%月%date:~11,2%日 星期%date:~1,1% 当你在凝视深渊的时候，深渊也在凝视着你
) else if %num%==3 (
	TITLE 今天是 %date:~3,4%年%date:~8,2%月%date:~11,2%日 星期%date:~1,1% 你所浪费的今天，是昨天死去的人奢望的明天
) else if %num%==4 (
	TITLE 今天是 %date:~3,4%年%date:~8,2%月%date:~11,2%日 星期%date:~1,1% 你所厌恶的现在，是未来的你回不去的曾经
) else (
	TITLE 今天是 %date:~3,4%年%date:~8,2%月%date:~11,2%日 星期%date:~1,1% 最终，屠龙者还是成为了龙
)
:main
cls
echo.
echo 请输入要启动的项目
echo.
echo ==============================
echo.
echo 1.打包企代号
echo.
echo 2.打包企业号
echo.
echo 3.打包平台端
echo.
echo 4.小游戏
echo.
echo 5.地推二期
echo.
echo 6.平台端
echo.
echo 7.React
echo.
echo 8.好彩
echo.
echo 9.预约后管
echo.
echo ==============================
echo.
set /p cnum=指令：
call :%cnum%
if %errorlevel%==1 goto main

:1
start "企代号" cmd /k "cd /d D:/Workspace/eb_ui & npm run build & cd.>dist.zip"
exit

:2
start "企业号" cmd /k "cd /d D:/Workspace/firm_web & npm run build & cd.>dist.zip"
exit

:3
start "平台端" cmd /k "cd /d D:/Workspace/terrace_web & npm run build & cd.>dist.zip"
exit

:4
start "前端" cmd /k "cd /d D:/Workspace/SimulationGame-ui & npm start"
exit

:5
start "前端" cmd /k "cd /d D:/Workspace/lottery_push_ui/lottery_web & npm run serve"
exit

:6
start "前端" cmd /k "cd /d D:/Workspace/terrace_web & npm run serve"
exit

:7
start "前端" cmd /k "cd /d D:/Workspace/ReactDemo/demo01 & npm start"
exit

:8
start "前端" cmd /k "cd /d D:/Workspace/haocai_ui & npm start"
exit

:9
start "前端" cmd /k "cd /d D:/Workspace/yuyue_admin_ui & npm run dev"
exit

:10
start "前端" cmd /k "cd /d D:/Workspace/lottery_push_ui/lottery_web & npm run serve"
start "后端" cmd /k "cd /d D:/Workspace/lottery_push_api & mvn clean spring-boot:run"
exit

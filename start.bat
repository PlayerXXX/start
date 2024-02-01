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
echo 1.打包xxx
echo.
echo 2.启动yyy
echo.
echo 3.启动zzz
echo.
echo ==============================
echo.
set /p cnum=指令：
call :%cnum%
if %errorlevel%==1 goto main

:1
start "xxx" cmd /k "cd /d D:/Workspace/xxx & npm run build & cd.>dist.zip"
exit

:2
start "yyy" cmd /k "cd /d D:/Workspace/yyy & npm run serve"
exit

:3
start "zzz前端" cmd /k "cd /d D:/Workspace/zzz & npm run serve"
start "zzz后端" cmd /k "cd /d D:/Workspace/zzz & mvn clean spring-boot:run"
exit

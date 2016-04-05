@ECHO OFF
IF DEFINED FUNC_ID (
    GOTO :INPUT_FUNC_ID_END
)
ECHO --------------------------------------------------------
ECHO ******** ƒpƒ‰ƒƒ^ˆê‚ð“ü—Í. . .****************************
:INPUT_FUNC_ID
SET FUNC_ID=
SET /P FUNC_ID=‹@”\ID‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢(—áF@UW1801):
CALL CSCRIPT //nologo //Job:checkFuncId config\check.wsf %FUNC_ID%
IF %ERRORLEVEL% NEQ 0 (
    GOTO :INPUT_FUNC_ID
)
:INPUT_FUNC_ID_END

ECHO --------------------------------------------------------
ECHO ******** ƒpƒ‰ƒƒ^“ñ‚ð“ü—Í. . .****************************
IF DEFINED SCREEN_ID (
    GOTO :INPUT_SCREEN_ID_END
)
:INPUT_SCREEN_ID
SET SCREEN_ID=
SET /P SCREEN_ID=‰æ–ÊID‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢(—áF@U002_180101G):
CALL CSCRIPT //nologo //Job:checkScreenId config\check.wsf %SCREEN_ID%
IF %ERRORLEVEL% NEQ 0 (
    GOTO :INPUT_SCREEN_ID
)
:INPUT_SCREEN_ID_END

set FUNC_ID=UW1801
set SCREEN_ID=U002_180101G
set IS_WK=D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129
set UGW_JS_PATH=%IS_WK%\ugw_web\ContextRoot\js\business
rem D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129\ugw_bean\src\com\canon\eservice\ugw\UW1801\common
set UGW_BEAN_COM_PATH=%IS_WK%\ugw_bean\src\com\canon\eservice\ugw\%FUNC_ID%\common
rem D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129\ugw_bean\src\com\canon\eservice\ugw\UW1801\consts
set UGW_BEAN_COS_PATH=%IS_WK%ugw_bean\src\com\canon\eservice\ugw\%FUNC_ID%\consts
rem D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129\ugw_ejb\src\com\canon\eservice\ugw\UW1801\cbs
set UGW_EJB_PATH=%IS_WK%\ugw_ejb\src\com\canon\eservice\ugw\%FUNC_ID%\cbs
rem D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129\ugw_web\src\com\canon\eservice\ugw\UW1801\web
set UGW_WEB_PATH=%IS_WK%\src\com\canon\eservice\ugw\%FUNC_ID%\web
rem output directory
set OUTPUT=D:\‹Zp•×‹­Ž‘—¿\Ž‘—¿\BAT\CheckFileIsExist
D:
dir %UGW_JS_PATH%\%SCREEN_ID%.js /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
dir %UGW_BEAN_COM_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
dir %UGW_BEAN_COS_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
dir %UGW_EJB_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
dir %UGW_WEB_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
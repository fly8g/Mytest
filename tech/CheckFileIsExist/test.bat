
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
set UGW_WEB_PATH=%IS_WK%\ugw_web\src\com\canon\eservice\ugw\%FUNC_ID%\web
rem output directory
set OUTPUT=D:\‹Zp•×‹­Ž‘—¿\Ž‘—¿\BAT\CheckFileIsExist
D:
cd %UGW_JS_PATH%
	attrib +s /s entries
	attrib +s /s lock
dir %UGW_JS_PATH%\%SCREEN_ID%.js /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
	attrib -s /s entries
	attrib -s /s lock
cd %UGW_BEAN_COM_PATH%
	attrib +s /s entries
	attrib +s /s lock
dir %UGW_BEAN_COM_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
	attrib -s /s entries
	attrib -s /s lock
cd %UGW_BEAN_COS_PATH%
	attrib +s /s entries
	attrib +s /s lock
dir %UGW_BEAN_COS_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
	attrib -s /s entries
	attrib -s /s lock
cd %UGW_EJB_PATH%
	attrib +s /s entries
	attrib +s /s lock
dir %UGW_EJB_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
	attrib -s /s entries
	attrib -s /s lock
cd %UGW_WEB_PATH%
	attrib +s /s entries
	attrib +s /s lock
dir %UGW_WEB_PATH%\%SCREEN_ID%*.java /s/b/a:-r-h-s-d >%OUTPUT%\filePath.txt
	attrib -s /s entries
	attrib -s /s lock


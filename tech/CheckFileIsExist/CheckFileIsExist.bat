cd /d D:\‹Zp•×‹­Ž‘—¿\Ž‘—¿\BAT\CheckFileIsExist
for /F "tokens=1,*" %i in (sourcePath.txt) do xcopy /p /i /e /c /y D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129\%i  D:\‹Zp•×‹­Ž‘—¿\Ž‘—¿\BAT\CheckFileIsExist >> debug.log
pause


cd /d D:\‹Zp•×‹­Ž‘—¿\Ž‘—¿\BAT\CheckFileIsExist
for /F "tokens=1,*" %i in (sourcePath.txt) do if exist D:\eclipse\CanonUGW\workspace_ŠJ”­Ž‘ŽY_20100129\%i (echo ‚ ‚è@%i) else (echo ‚È‚µ@%i) >> notExistFlie.log


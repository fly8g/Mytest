cd /d D:\�Z�p�׋�����\����\BAT\CheckFileIsExist
for /F "tokens=1,*" %i in (sourcePath.txt) do xcopy /p /i /e /c /y D:\eclipse\CanonUGW\workspace_�J�����Y_20100129\%i  D:\�Z�p�׋�����\����\BAT\CheckFileIsExist >> debug.log
pause


cd /d D:\�Z�p�׋�����\����\BAT\CheckFileIsExist
for /F "tokens=1,*" %i in (sourcePath.txt) do if exist D:\eclipse\CanonUGW\workspace_�J�����Y_20100129\%i (echo ����@%i) else (echo �Ȃ��@%i) >> notExistFlie.log


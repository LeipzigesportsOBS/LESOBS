    IF  "%*" NEQ "" SET FONT=%*  (

FOR /F %%i in ('dir /b "%FONT%*.*tf"') DO CALL :DEST %%i

) else (

EXIT

)

:DEST

SET FONTFILE=%~n1%~x1
SET FONTNAME=%~n1


IF "%~x1"==".ttf" SET FONTTYPE=TrueType
IF "%~x1"==".otf" SET FONTTYPE=OpenType
 
ECHO FILE = %FONTFILE%
ECHO NAME = %FONTNAME:-= %
ECHO TYPE = %FONTTYPE%

fontview  %~dp0%FONTFILE%  
 

GOTO :EXIT
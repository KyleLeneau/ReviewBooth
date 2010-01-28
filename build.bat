@ECHO OFF

IF "%1"=="" GOTO INVALID

SET COMMAND="%windir%\Microsoft.NET\Framework\v3.5\MSBuild.exe" "ReviewBooth.proj" /target:%1

IF "%2" NEQ "" SET COMMAND=%COMMAND% /property:Configuration=%2

echo Building:
echo %COMMAND%
echo  

%COMMAND%
SET COMMAND=

GOTO DONE

:INVALID
echo usage: build [target] [configuration]
echo  
echo targets:
echo     all
echo     clean
echo     build
echo     test
echo  
echo configurations:
echo     debug
echo     release

:DONE

@ECHO ON
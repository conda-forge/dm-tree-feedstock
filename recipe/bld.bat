if "%ARCH%" == "32" (set PLATFORM=x86) else (set PLATFORM=x64)

set "BAZEL_VC=%VSINSTALLDIR%VC"
set "BAZEL_VS=%VSINSTALLDIR%"

"%PYTHON%" setup.py install

rem remember the return code
set RETCODE=%ERRORLEVEL%
rem Now shut down Bazel server, otherwise Windows would not allow moving a directory with it
bazel "--output_user_root=%SRC_DIR%/bazel-root" shutdown
rem Ignore "bazel shutdown" errors
exit /b %RETCODE%

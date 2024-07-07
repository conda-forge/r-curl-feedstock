copy /y configure configure.win || exit 1
copy /y src\Makevars.in src\Makevars.win || exit 1
(
echo=INCLUDE_DIR=%LIBRARY_INC:\=/%
echo=LIB_DIR=%LIBRARY_LIB:\=/%
) > .Renviron
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1

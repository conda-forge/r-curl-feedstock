copy /y configure configure.win || exit 1
copy /y src\Makevars.in src\Makevars.win || exit 1
"%R%" CMD INSTALL --configure-vars="INCLUDE_DIR=%LIBRARY_INC:\=/% LIB_DIR=%LIBRARY_LIB:\=/%" --build .
IF %ERRORLEVEL% NEQ 0 exit 1

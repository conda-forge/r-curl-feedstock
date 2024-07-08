sed < configure ^
    -e "1 a\INCLUDE_DIR='%LIBRARY_INC:\=/%'" ^
    -e "1 a\LIB_DIR='%LIBRARY_LIB:\=/%'" ^
    -e "s|> src/Makevars|&.win|" ^
    > configure.win
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1

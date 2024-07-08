sed -i src/Makevars.win ^
    -e "/TARGET/d" ^
    -e "/winlibs\.R/d" ^
    -e "s|-L\S*RWINLIB\S*|-L%LIBRARY_LIB:\=/%|g" ^
    -e "s|-I\S*RWINLIB\S*|-I%LIBRARY_INC:\=/%|g" ^
    -e "s|-DCURL_STATICLIB\s*||g"
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1

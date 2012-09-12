
@echo off
REM Install Ghostscript/MikTex (for ps2pdf) and XPDF (for pdftops) (Make sure ps2pdf and pdftops can be accessed through path)
REM http://pages.cs.wisc.edu/~ghost/
REM http://foolabs.com/xpdf/download.html

:spec_file
echo Finalize publication PDF (flattening, embed fonts, cmyk)
set file=eurovis12-fem

:start
echo.
echo Converting to PS
echo.

pdftops -paper match %file%.pdf %file%.ps

echo.
echo Converting to PDF
echo.

ps2pdf -dPDFSETTINGS#/prepress -dEmbedAllFonts#true -dProcessColorModel#/DeviceCMYK %file%.ps %file%-publish.pdf

echo Done! - New PDF: %file%-publish.pdf
echo.

pause
cd C:%HOMEPATH%\AppData\Local\Roblox\Versions
for  /F "delims=" %%i IN ('dir /b /ad-h /t:c /od') do set p=%%i
if defined p (
echo using %p%
) else (
    echo file not found
)
cd C:%HOMEPATH%\AppData\Local\Roblox\Versions\%p%
if exist ClientSettings\ (
    echo Client Settings subdir found
) else (
    echo subdir not found
    md ClientSettings
)
cls
set /p fps=Enter fps:
echo { > C:%HOMEPATH%\AppData\Local\Roblox\Versions\%p%\ClientSettings\ClientAppSettings.json
echo "DFIntTaskSchedulerTargetFps": %fps%, >> C:%HOMEPATH%\AppData\Local\Roblox\Versions\%p%\ClientSettings\ClientAppSettings.json
echo } >> C:%HOMEPATH%\AppData\Local\Roblox\Versions\%p%\ClientSettings\ClientAppSettings.json

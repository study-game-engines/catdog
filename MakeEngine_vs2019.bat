@echo off

Set BUILD_IDE_NAME=vs2019
Set CMAKE_IDE_FULL_NAME="Visual Studio 16 2019"

if exist "./Engine/Auto/commercial_sdk_locations.bat" (
    call "./Engine/Auto/commercial_sdk_locations.bat"
) else (
    echo commercial_sdk_locations does not exist, skipped
)

cd "./Engine/Auto/Scripts"
"../Programs/Windows/premake5.exe" "vs2019"

pause
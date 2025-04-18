@echo off
echo Renaming .js files with JSX content to .jsx

REM Rename Login and Instructions files
if exist "p:\codehunt\fe\src\pages\Login.js" (
  ren "p:\codehunt\fe\src\pages\Login.js" "Login.jsx"
  echo Renamed Login.js to Login.jsx
)

if exist "p:\codehunt\fe\src\pages\Instructions.js" (
  ren "p:\codehunt\fe\src\pages\Instructions.js" "Instructions.jsx"
  echo Renamed Instructions.js to Instructions.jsx
)

REM Check for other JS files that might contain JSX
for %%F in (p:\codehunt\fe\src\pages\*.js p:\codehunt\fe\src\components\*.js) do (
  echo Checking %%F for JSX content...
  findstr /C:"React" /C:"<" /C:"/>" "%%F" > nul
  if not errorlevel 1 (
    echo JSX content found in %%F - renaming to .jsx
    ren "%%F" "%%~nF.jsx"
  )
)

echo Renaming complete. Run npm run dev to start the development server.

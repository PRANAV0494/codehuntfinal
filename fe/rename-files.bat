@echo off
echo Renaming React component files from .js to .jsx

REM Rename page files
ren "p:\codehunt\fe\src\pages\Admin.js" "Admin.jsx"
ren "p:\codehunt\fe\src\pages\Instructions.js" "Instructions.jsx"
ren "p:\codehunt\fe\src\pages\Login.js" "Login.jsx"
ren "p:\codehunt\fe\src\pages\Quiz1.js" "Quiz1.jsx"
ren "p:\codehunt\fe\src\pages\Quiz2.js" "Quiz2.jsx"
ren "p:\codehunt\fe\src\pages\Quiz3.js" "Quiz3.jsx"

REM Rename component files
ren "p:\codehunt\fe\src\components\Navbar.js" "Navbar.jsx"
ren "p:\codehunt\fe\src\components\Timer.js" "Timer.jsx"
ren "p:\codehunt\fe\src\components\QuestionCard.js" "QuestionCard.jsx"
ren "p:\codehunt\fe\src\components\PrivateRoute.js" "PrivateRoute.jsx"

REM Rename main app files
ren "p:\codehunt\fe\src\App.js" "App.jsx"
if exist "p:\codehunt\fe\src\main.js" ren "p:\codehunt\fe\src\main.js" "main.jsx"

echo Renaming complete!
echo Run "npm run dev" to start the development server again

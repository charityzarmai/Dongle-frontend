@echo off
echo ========================================
echo Pushing branches to charityzarmai/Dongle-frontend
echo ========================================
echo.

echo Pushing main branch...
git push -u charityzarmai main
if %errorlevel% neq 0 (
    echo Failed to push main branch
    pause
    exit /b 1
)
echo ✓ Main branch pushed successfully
echo.

echo Pushing feature/admin-pagination...
git push -u charityzarmai feature/admin-pagination
if %errorlevel% neq 0 (
    echo Failed to push feature/admin-pagination
    pause
    exit /b 1
)
echo ✓ feature/admin-pagination pushed successfully
echo.

echo Pushing feature/error-mapper...
git push -u charityzarmai feature/error-mapper
if %errorlevel% neq 0 (
    echo Failed to push feature/error-mapper
    pause
    exit /b 1
)
echo ✓ feature/error-mapper pushed successfully
echo.

echo Pushing feature/bundle-analysis...
git push -u charityzarmai feature/bundle-analysis
if %errorlevel% neq 0 (
    echo Failed to push feature/bundle-analysis
    pause
    exit /b 1
)
echo ✓ feature/bundle-analysis pushed successfully
echo.

echo Pushing feature/offline-detection...
git push -u charityzarmai feature/offline-detection
if %errorlevel% neq 0 (
    echo Failed to push feature/offline-detection
    pause
    exit /b 1
)
echo ✓ feature/offline-detection pushed successfully
echo.

echo ========================================
echo All branches pushed successfully! 🎉
echo ========================================
echo.
echo You can now view them at:
echo https://github.com/charityzarmai/Dongle-frontend/branches
echo.
pause

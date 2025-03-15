@echo off
echo 🚀 Welcome to LuxStay - Premium Hotel Booking Platform
echo ==================================================

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js v16 or higher first.
    pause
    exit /b 1
)

echo ✅ Node.js version: 
node --version

echo.
echo 📦 Installing dependencies...

echo Installing API dependencies...
cd api
call npm install
cd ..

echo Installing Client dependencies...
cd client
call npm install
cd ..

echo Installing Admin dependencies...
cd admin
call npm install
cd ..

echo.
echo ✅ All dependencies installed successfully!

REM Create environment file template
echo.
echo 🔧 Setting up environment variables...
if not exist "api\.env" (
    (
        echo # MongoDB Connection String
        echo MONGO_URI=mongodb://localhost:27017/luxstay
        echo.
        echo # JWT Secret ^(change this to a secure random string^)
        echo JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
        echo.
        echo # Cloudinary Configuration ^(optional - for image uploads^)
        echo CLOUDINARY_CLOUD_NAME=your-cloudinary-name
        echo CLOUDINARY_API_KEY=your-cloudinary-api-key
        echo CLOUDINARY_API_SECRET=your-cloudinary-api-secret
        echo.
        echo # Server Configuration
        echo PORT=8001
        echo NODE_ENV=development
    ) > api\.env
    echo ✅ Created api\.env template
) else (
    echo ⚠️  api\.env already exists
)

echo.
echo 🎉 Setup complete! Here's how to run the project:
echo.
echo 1. Start the API server:
echo    cd api ^&^& npm run dev
echo.
echo 2. Start the Client frontend ^(in a new terminal^):
echo    cd client ^&^& npm run dev
echo.
echo 3. Start the Admin dashboard ^(in a new terminal^):
echo    cd admin ^&^& npm run dev
echo.
echo 🌐 Access URLs:
echo    - Client: http://localhost:5173
echo    - Admin: http://localhost:5174
echo    - API: http://localhost:8001
echo.
echo 📝 Don't forget to:
echo    - Update the MongoDB connection string in api\.env
echo    - Change the JWT_SECRET to a secure random string
echo    - Set up Cloudinary if you want image upload functionality
echo.
echo Happy coding! 🏨✨
pause

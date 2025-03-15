#!/bin/bash

# LuxStay - Premium Hotel Booking Platform Setup Script
echo "🚀 Welcome to LuxStay - Premium Hotel Booking Platform"
echo "=================================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js v16 or higher first."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "❌ Node.js version 16 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js version: $(node -v)"

# Install dependencies for all components
echo ""
echo "📦 Installing dependencies..."

echo "Installing API dependencies..."
cd api
npm install
cd ..

echo "Installing Client dependencies..."
cd client
npm install
cd ..

echo "Installing Admin dependencies..."
cd admin
npm install
cd ..

echo ""
echo "✅ All dependencies installed successfully!"

# Create environment file template
echo ""
echo "🔧 Setting up environment variables..."
if [ ! -f api/.env ]; then
    cat > api/.env << EOF
# MongoDB Connection String
MONGO_URI=mongodb://localhost:27017/luxstay

# JWT Secret (change this to a secure random string)
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production

# Cloudinary Configuration (optional - for image uploads)
CLOUDINARY_CLOUD_NAME=your-cloudinary-name
CLOUDINARY_API_KEY=your-cloudinary-api-key
CLOUDINARY_API_SECRET=your-cloudinary-api-secret

# Server Configuration
PORT=8001
NODE_ENV=development
EOF
    echo "✅ Created api/.env template"
else
    echo "⚠️  api/.env already exists"
fi

echo ""
echo "🎉 Setup complete! Here's how to run the project:"
echo ""
echo "1. Start the API server:"
echo "   cd api && npm run dev"
echo ""
echo "2. Start the Client frontend (in a new terminal):"
echo "   cd client && npm run dev"
echo ""
echo "3. Start the Admin dashboard (in a new terminal):"
echo "   cd admin && npm run dev"
echo ""
echo "🌐 Access URLs:"
echo "   - Client: http://localhost:5173"
echo "   - Admin: http://localhost:5174"
echo "   - API: http://localhost:8001"
echo ""
echo "📝 Don't forget to:"
echo "   - Update the MongoDB connection string in api/.env"
echo "   - Change the JWT_SECRET to a secure random string"
echo "   - Set up Cloudinary if you want image upload functionality"
echo ""
echo "Happy coding! 🏨✨"

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const envPath = path.join(__dirname, '.env');

const envContent = `# MongoDB Connection String
# For local development (MongoDB installed locally):
MONGO_URI=mongodb://localhost:27017/luxstay

# For MongoDB Atlas (cloud database):
# MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/luxstay

# JWT Secret (change this to a secure random string)
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production

# Cloudinary Configuration (optional - for image uploads)
CLOUDINARY_CLOUD_NAME=your-cloudinary-name
CLOUDINARY_API_KEY=your-cloudinary-api-key
CLOUDINARY_API_SECRET=your-cloudinary-api-secret

# Server Configuration
PORT=8001
NODE_ENV=development
`;

try {
    if (fs.existsSync(envPath)) {
        console.log('⚠️  .env file already exists. Skipping creation.');
        console.log('📁 Current .env file location:', envPath);
    } else {
        fs.writeFileSync(envPath, envContent);
        console.log('✅ .env file created successfully!');
        console.log('📁 File location:', envPath);
        console.log('');
        console.log('📝 Please update the following values in your .env file:');
        console.log('   - MONGO_URI: Your MongoDB connection string');
        console.log('   - JWT_SECRET: A secure random string');
        console.log('   - Cloudinary credentials (if using image uploads)');
    }
} catch (error) {
    console.error('❌ Error creating .env file:', error.message);
    console.log('');
    console.log('📝 Please manually create a .env file in the api directory with this content:');
    console.log(envContent);
}

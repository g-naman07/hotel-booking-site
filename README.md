# 🏨 LuxStay - Premium Hotel Booking Platform

> **A full-stack luxury hotel booking application built with modern web technologies**

[![React](https://img.shields.io/badge/React-18.3.1-blue.svg)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-20.14.0-green.svg)](https://nodejs.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-7.0.11-orange.svg)](https://www.mongodb.com/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## 📋 **Project Overview**

LuxStay is a premium hotel booking platform designed to provide an exceptional experience for luxury travelers. Built over 4 months with a focus on modern architecture, responsive design, and scalable backend services.

### **Key Features**
- ✨ **Luxury-focused UI/UX** with premium design aesthetics
- 🔐 **Secure authentication** using JWT tokens
- 🏨 **Advanced hotel search** with real-time availability
- 📱 **Responsive design** optimized for all devices
- 🎯 **Admin dashboard** for comprehensive management
- 🚀 **Modern tech stack** with best practices

## 🛠️ **Technology Stack**

### **Frontend**
- **React 18** - Modern UI framework with hooks
- **Vite** - Fast build tool and development server
- **SCSS/CSS** - Advanced styling with responsive design
- **React Router** - Client-side routing
- **Context API** - State management

### **Backend**
- **Node.js** - Server-side JavaScript runtime
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database with Mongoose ODM
- **JWT** - JSON Web Token authentication
- **Cloudinary** - Image upload and management

### **Admin Dashboard**
- **Material-UI** - Professional component library
- **Recharts** - Data visualization
- **Advanced analytics** and reporting

## 📁 **Project Structure**

```
luxstay-hotel-booking/
├── api/                    # Backend API server
│   ├── controllers/        # Business logic
│   ├── models/            # Database schemas
│   ├── routes/            # API endpoints
│   ├── utils/             # Helper functions
│   └── index.js           # Server entry point
├── client/                # Main booking frontend
│   ├── src/
│   │   ├── components/    # Reusable UI components
│   │   ├── pages/         # Page components
│   │   ├── context/       # React context providers
│   │   ├── hooks/         # Custom React hooks
│   │   └── assets/        # Static assets
│   └── public/            # Public assets
├── admin/                 # Admin dashboard
│   ├── src/
│   │   ├── components/    # Admin UI components
│   │   ├── pages/         # Admin pages
│   │   └── context/       # Admin state management
│   └── public/            # Admin public assets
└── docs/                  # Documentation
```

## 🚀 **Getting Started**

### **Prerequisites**
- Node.js 16+ installed
- MongoDB installed and running
- Git for version control

### **Installation**

1. **Clone the repository**
   ```bash
   git clone https://github.com/g-naman07/hotel-booking-site.git
   cd hotel-booking-site
   ```

2. **Install dependencies**
   ```bash
   # Install API dependencies
   cd api && npm install
   
   # Install client dependencies
   cd ../client && npm install
   
   # Install admin dependencies
   cd ../admin && npm install
   ```

3. **Environment setup**
   ```bash
   cd ../api
   # Copy .env.example to .env and configure
   cp .env.example .env
   ```

4. **Start the application**
   ```bash
   # Terminal 1: Start API server
   cd api && npm run dev
   
   # Terminal 2: Start client frontend
   cd client && npm run dev
   
   # Terminal 3: Start admin dashboard
   cd admin && npm run dev
   ```

## 🌐 **Access URLs**
- **Client Frontend**: http://localhost:5173
- **Admin Dashboard**: http://localhost:5174
- **API Server**: http://localhost:8001

## 📊 **API Endpoints**

### **Authentication**
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout

### **Hotels**
- `GET /api/hotels` - Get all hotels
- `GET /api/hotels/:id` - Get specific hotel
- `POST /api/hotels` - Create hotel (admin)
- `PUT /api/hotels/:id` - Update hotel (admin)

### **Rooms**
- `GET /api/rooms` - Get all rooms
- `POST /api/rooms` - Create room (admin)
- `PUT /api/rooms/:id` - Update room (admin)

## 🎨 **Design Features**

- **Luxury aesthetic** with premium color schemes
- **Responsive design** for all screen sizes
- **Modern UI components** with smooth animations
- **Accessibility focused** design principles
- **Professional typography** and spacing

## 🔒 **Security Features**

- **JWT authentication** with secure token handling
- **Password hashing** using bcrypt
- **Input validation** and sanitization
- **CORS configuration** for secure cross-origin requests
- **Helmet.js** for security headers

## 📈 **Performance Optimizations**

- **Code splitting** and lazy loading
- **Image optimization** with Cloudinary
- **Database indexing** for fast queries
- **Caching strategies** for improved response times
- **Bundle optimization** with Vite

## 🧪 **Testing & Quality**

- **ESLint** configuration for code quality
- **Prettier** for consistent formatting
- **Component testing** with React Testing Library
- **API testing** with Postman/Insomnia
- **Performance monitoring** and optimization

## 📝 **Development Timeline**

- **Month 1** (September 2024): Project setup, basic architecture
- **Month 2** (October 2024): Frontend development, UI components
- **Month 3** (November 2024): Backend API, database design
- **Month 4** (December 2024): Admin dashboard, testing, optimization
- **Month 5** (January 2025): Final polish, documentation, deployment

## 🤝 **Contributing**

Contributions are welcome! Please feel free to submit a Pull Request.

### **Development Guidelines**
- Follow the existing code style
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 **Author**

**Naman Gupta** - Full Stack Developer

- **GitHub**: [@g-naman07](https://github.com/g-naman07)
- **LinkedIn**: [Naman Gupta](https://linkedin.com/in/naman-gupta)
- **Portfolio**: [namangupta.dev](https://namangupta.dev)

## 🙏 **Acknowledgments**

- **React Team** for the amazing framework
- **MongoDB** for the robust database solution
- **Material-UI** for the beautiful component library
- **Open source community** for inspiration and tools

---

**LuxStay** - Where luxury meets convenience. Experience the finest hotels with our premium booking platform.

> *Built with ❤️ and ☕ by Naman Gupta*

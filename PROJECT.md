# LuxStay - Project Documentation

## Overview

LuxStay is a premium hotel booking platform designed to provide an exceptional experience for luxury travelers. The platform features a modern, responsive design with advanced booking capabilities, comprehensive admin management, and secure user authentication.

## Architecture

### Tech Stack
- **Frontend**: React 18 with Vite
- **Backend**: Node.js with Express.js
- **Database**: MongoDB with Mongoose ODM
- **Authentication**: JWT (JSON Web Tokens)
- **File Storage**: Cloudinary
- **Admin UI**: Material-UI components
- **Styling**: SCSS/CSS with responsive design

### Project Structure
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

## Features

### User Features
1. **Hotel Browsing**
   - Search hotels by location
   - Filter by amenities, price range, ratings
   - View detailed hotel information
   - Photo galleries and virtual tours

2. **Booking System**
   - Real-time availability checking
   - Date range selection
   - Guest count and room preferences
   - Special requests and amenities

3. **User Account**
   - Secure registration and login
   - Profile management
   - Booking history
   - Preferences and favorites

4. **Premium Experience**
   - Luxury-focused UI/UX
   - Exclusive hotel collections
   - Concierge services
   - VIP member benefits

### Admin Features
1. **Dashboard Analytics**
   - Revenue tracking
   - Booking statistics
   - User analytics
   - Performance metrics

2. **Content Management**
   - Hotel and room management
   - Image upload and management
   - Pricing and availability control
   - Amenity configuration

3. **User Management**
   - User account oversight
   - Booking management
   - Support ticket system
   - Admin user roles

4. **System Administration**
   - System health monitoring
   - Log management
   - Configuration settings
   - Backup and maintenance

## API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout
- `GET /api/auth/verify` - Token verification

### Hotels
- `GET /api/hotels` - Get all hotels
- `GET /api/hotels/:id` - Get specific hotel
- `POST /api/hotels` - Create new hotel (admin)
- `PUT /api/hotels/:id` - Update hotel (admin)
- `DELETE /api/hotels/:id` - Delete hotel (admin)

### Rooms
- `GET /api/rooms` - Get all rooms
- `GET /api/rooms/:id` - Get specific room
- `POST /api/rooms` - Create new room (admin)
- `PUT /api/rooms/:id` - Update room (admin)
- `DELETE /api/rooms/:id` - Delete room (admin)

### Users
- `GET /api/users` - Get all users (admin)
- `GET /api/users/:id` - Get user profile
- `PUT /api/users/:id` - Update user profile
- `DELETE /api/users/:id` - Delete user (admin)

## Database Schema

### User Model
```javascript
{
  username: String,
  email: String,
  password: String (hashed),
  isAdmin: Boolean,
  createdAt: Date,
  updatedAt: Date
}
```

### Hotel Model
```javascript
{
  name: String,
  type: String,
  city: String,
  address: String,
  distance: String,
  photos: [String],
  title: String,
  desc: String,
  rating: Number,
  rooms: [Room],
  cheapestPrice: Number,
  featured: Boolean
}
```

### Room Model
```javascript
{
  title: String,
  price: Number,
  maxPeople: Number,
  desc: String,
  roomNumbers: [String],
  unavailableDates: [Date]
}
```

## Security Features

1. **Authentication**
   - JWT token-based authentication
   - Password hashing with bcrypt
   - Token expiration and refresh
   - Secure cookie handling

2. **Authorization**
   - Role-based access control
   - Admin-only endpoints protection
   - User data isolation

3. **Data Protection**
   - Input validation and sanitization
   - SQL injection prevention
   - XSS protection
   - CORS configuration

4. **File Upload Security**
   - File type validation
   - Size limits
   - Secure cloud storage
   - Image optimization

## Performance Optimization

1. **Frontend**
   - Code splitting and lazy loading
   - Image optimization
   - Caching strategies
   - Bundle size optimization

2. **Backend**
   - Database indexing
   - Query optimization
   - Response caching
   - Rate limiting

3. **Database**
   - Efficient schema design
   - Index optimization
   - Connection pooling
   - Query performance monitoring

## Deployment

### Prerequisites
- Node.js 16+ installed
- MongoDB database (local or Atlas)
- Cloudinary account (for image uploads)
- Domain and SSL certificate

### Environment Variables
```env
# Database
MONGO_URI=mongodb://localhost:27017/luxstay

# Authentication
JWT_SECRET=your-super-secret-jwt-key

# Cloudinary
CLOUDINARY_CLOUD_NAME=your-cloudinary-name
CLOUDINARY_API_KEY=your-cloudinary-api-key
CLOUDINARY_API_SECRET=your-cloudinary-api-secret

# Server
PORT=8001
NODE_ENV=production
```

### Deployment Steps
1. **Backend Deployment**
   - Deploy to Heroku, Railway, or similar
   - Set environment variables
   - Configure MongoDB connection
   - Set up monitoring

2. **Frontend Deployment**
   - Build production bundle
   - Deploy to Netlify, Vercel, or similar
   - Configure custom domain
   - Set up CDN

3. **Database Setup**
   - Set up MongoDB Atlas cluster
   - Configure network access
   - Set up database users
   - Import initial data

## Development Guidelines

### Code Style
- Use ESLint and Prettier
- Follow React best practices
- Use TypeScript for type safety
- Write meaningful commit messages

### Testing
- Unit tests for utilities
- Integration tests for API
- E2E tests for critical flows
- Performance testing

### Git Workflow
- Feature branch workflow
- Pull request reviews
- Semantic versioning
- Automated CI/CD

## Future Enhancements

1. **Advanced Features**
   - Payment gateway integration
   - Review and rating system
   - Loyalty program
   - Mobile app development

2. **AI/ML Integration**
   - Personalized recommendations
   - Dynamic pricing
   - Chatbot support
   - Predictive analytics

3. **Performance**
   - GraphQL implementation
   - Real-time notifications
   - Progressive Web App
   - Microservices architecture

## Support and Maintenance

### Monitoring
- Application performance monitoring
- Error tracking and alerting
- Database performance monitoring
- User analytics

### Backup Strategy
- Regular database backups
- Code repository backups
- Configuration backups
- Disaster recovery plan

### Updates and Maintenance
- Regular dependency updates
- Security patches
- Performance optimizations
- Feature updates

---

**LuxStay** - Elevating the hotel booking experience with luxury and convenience.

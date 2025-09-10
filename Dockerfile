FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Run tests during build (optional but recommended)
RUN npm test

# Build step
RUN npm run build

# Runtime command
CMD ["npm", "start"]

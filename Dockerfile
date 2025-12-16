FROM node:20-alpine

# Enable Corepack for Yarn v4
RUN corepack enable

WORKDIR /app

# Copy package files
COPY package.json yarn.lock .yarnrc.yml ./
COPY .yarn ./.yarn

# Install dependencies
RUN yarn install --immutable

# Copy source code
COPY src ./src

# Expose port
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]

# Official node.js image
FROM node:12

# Add app source code, subsequent directions start from this directory
WORKDIR /app

# Local package json
COPY package*.json ./

# Opens terminal and running command
RUN npm install

# Copies source code
COPY . .

# Set env variable in container
ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
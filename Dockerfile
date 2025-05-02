# Sử dụng Node 18 LTS và cài ffmpeg
FROM node:18

# Cài ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Tạo thư mục app
WORKDIR /app

# Copy code
COPY package*.json ./
RUN npm install

COPY . .

# Port mặc định
EXPOSE 8080

# Start app
CMD ["npm", "start"]

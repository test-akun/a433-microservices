# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Menentukan working directory untuk container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
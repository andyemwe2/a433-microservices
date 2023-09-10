# Gunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin seluruh source code ke working directory di dalam container
COPY . .

# Menentukan environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Menjalankan server dengan perintah npm start
CMD ["npm", "start"]

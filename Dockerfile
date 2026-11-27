FROM node:20-alpine
WORKDIR /app
COPY app-source.zip /tmp/app-source.zip
RUN apk add --no-cache unzip \
    && unzip -q /tmp/app-source.zip -d /app \
    && rm /tmp/app-source.zip \
    && npm install --omit=dev
ENV NODE_ENV=production
CMD ["npm", "start"]

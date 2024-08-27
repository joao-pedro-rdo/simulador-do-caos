FROM node:20.9.0
WORKDIR /app
COPY /src/package*.json .
RUN npm install
RUN apt update && apt install -y stress
COPY /src/ .
RUN npm run compile
HEALTHCHECK --interval=10s --timeout=3s --start-period=15s --retries=2 CMD [ "curl", "-f", "http://localhost:3000/health" ]
EXPOSE 3000
CMD [ "npm", "start" ]
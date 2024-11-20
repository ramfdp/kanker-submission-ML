FROM node:18.17.1
WORKDIR /app
ENV PORT 8000
ENV MODEL_URL 'https://storage.googleapis.com/model-storage-submission/model-in-prod/model.json'
COPY . .
RUN npm install
EXPOSE 8000
CMD [ "npm", "run", "start"]
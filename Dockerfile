FROM python:3.8
WORKDIR /python-app
COPY python-app/main.py
CMD ["python", "main.py"]

FROM node:14
WORKDIR /node-app
COPY node-app/package.json .
RUN npm installx
COPY node-app/indexs.js
CMD ["node-app", "index.js"]

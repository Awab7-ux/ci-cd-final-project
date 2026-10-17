FROM node:18-slim
WORKDIR /app
COPY . .
EXPOSE 8000
CMD ["node","-e","require('http').createServer((q,r)=>r.end('SERVICE RUNNING')).listen(8000,()=>console.log('SERVICE RUNNING on port 8000'))"]

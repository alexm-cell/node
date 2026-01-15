const http = require('http');
const PORT = 3000;
http.createServer((req, res) => {
  res.end('Hello from Node.js 18 Docker container!');
}).listen(PORT, () => console.log(`Server running on port ${PORT}`));

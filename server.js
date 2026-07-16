const http = require('http');
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain; charset=utf-8');
  res.end('Привет! Этот сайт запущен внутри моего первого Docker-контейнера! 🎉\n');
});

server.listen(port, () => {
  console.log(`Сервер успешно запущен на порту ${port}`);
});

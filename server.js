const express = require("express");

const PORT = process.env.PORT || 3000;

const server = express();

server.use(express.json());

server.listen(PORT, ()=>{
  console.log(`listening on http::/localhost:${PORT}`);
})
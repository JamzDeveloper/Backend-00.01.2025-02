const http = require("node:http");
const url = require("node:url");
const fs = require("node:fs");
let listSales = [
  {
    id: 1,
    product: "laptop",
  },
  {
    id: 2,
    product: "mouse",
  },
  {
    id: 3,
    product: "teclado mecanico",
  },
  {
    id: 4,
    product: "macbook 14 pro",
  },
];
//crea servidor y recibe todas las peticiones http
const server = http.createServer((req, res) => {
  //   res.writeHead(200, { "Content-Type": "application/json" }); // crea la cabecera de respuesta

  //   res.end(
  //     //regresa la respuesta
  //     JSON.stringify({
  //       data: "Hello World!",
  //     })
  //   );

  //extraccion de url
  const parseUrl = url.parse(req.url, true);
  console.log(parseUrl);
  const path = parseUrl.pathname;

  //api -- back
  // creacion de ruta
  if (req.method == "GET" && path === "/api/sales") {
    //retornar respuesta
    res.writeHead(200, { "Content-Type": "application/json" }); // crea la cabecera de respuesta
    return res.end(
      //regresa la respuesta
      JSON.stringify({
        data: listSales,
      })
    );
  }
  //creacion de ruta post

  //localhost:4000/api/sales  post

  if (req.method == "POST" && path == "/api/sales") {
    console.log("creating a new sale");

    let body = "";
    req.on("data", (chunk) => {
      body += chunk.toString();
    });

    return req.on("end", () => {
      const { name, description, date, isCompleted } = JSON.parse(body);
      if (!name || !description || !date) {
        res.writeHead(400, { "Content-Type": "application/json" });
        return res.end(JSON.stringify({ message: "fantan campos" }));
      }

      listSales.push({
        id: listSales.length + 1,
        product: name,
        description,
        date,
        isCompleted: isCompleted ?? "pendiente",
      });
      res.writeHead(201, { "Content-Type": "application/json" });
      return res.end(JSON.stringify(listSales));
    });
  }

  //web -- front
  if (req.method == "GET" && path == "/web/sales") {
    return fs.readFile("./sales.html", "utf8", (err, data) => {
      if (err) {
        res.writeHead(500, { "content-type": "application/json" });

        return res.end(JSON.stringify({ message: "Internal server error" }));
      }
      res.writeHead(200, { "Context-Type": "text/html" });

      return res.end(data.toString());
    });
  }
  if (req.method == "GET" && path == "/web/sales/create") {
    return fs.readFile("./create-sales.html", "utf8", (err, data) => {
      if (err) {
        res.writeHead(500, { "content-type": "application/json" });

        return res.end(JSON.stringify({ message: "Internal server error" }));
      }
      res.writeHead(200, { "Context-Type": "text/html" });

      return res.end(data.toString());
    });
  }

  res.writeHead(404, { "Content-Type": "application/json" });
  return res.end(JSON.stringify({ message: "Not found" }));
});

server.listen(4000, () => {
  console.log("server listing in port 4000");
});

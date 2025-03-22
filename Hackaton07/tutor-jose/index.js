import express from "express";
import dotenv from "dotenv";
import { newGithubService } from "./services/github/github.service.js";

dotenv.config();
const app = express();
const port = process.env.PORT;

app.get("/hola", (req, res) => {
  res.send("Hello World!");
});

app.get("/github/:username", async (req, res) => {
  const { username } = req.params;

  console.log(1, username);
  const result = await newGithubService.getDataUser(username);
  res.json(result);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

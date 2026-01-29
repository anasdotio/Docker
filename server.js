const express = require("express");
const logger = require("./logger");
const morgan = require("morgan");

const app = express();

app.use(morgan("combined"));

const PORT = 8000;

app.get("/health", (req, res) => {
  res.status(200).json({ message: "OK" });
});
app.get("/", (req, res) => {
  res.status(200).json({ message: "Hello World !" });
});

app
  .listen(PORT, () => {
    logger.info(`Server is running on port ${PORT}`);
  })
  .on("error", (err) => {
    logger.error(`Error occured while starting the app : ${err.message}`);
  });

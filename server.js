require("dotenv").config();
const express = require("express");
const cors = require("cors");
const personagemRoutes = require("./src/routes/personagemRoutes");
const favoritoRoutes = require("./src/routes/favoritoRoutes");

const path = require("path");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api", personagemRoutes);
app.use("/api", favoritoRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
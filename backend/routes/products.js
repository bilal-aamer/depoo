const express = require("express");
const { getAllProducts } = require("../controller/products");

const router = express.Router();

router.get("/getAllProducts",getAllProducts);

module.exports = router;
const express = require("express");
const { notifyUsers } = require("../controller/twilio");

const router = express.Router();

router.post("/notifyUsers",notifyUsers);


module.exports = router;
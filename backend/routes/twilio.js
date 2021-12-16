const express = require("express");
const { notifyUsers,usersReply } = require("../controller/twilio");

const router = express.Router();

router.post("/notifyUsers",notifyUsers);

router.get("/",(req,res) => {
    res.send("<h1>This is twilio</h1>")
})


module.exports = router;
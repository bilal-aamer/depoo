const express = require('express');
const cors = require("cors");
const bodyParser = require("body-parser");
const dotenv = require('dotenv').config();


const twilioRouter = require("./routes/twilio");
const productsRouter = require("./routes/products");

const app = express();
const port = 3000;

app.use(bodyParser.json())


app.use(cors());

// routes
app.use('/twilio',twilioRouter);
app.use('/products',productsRouter);
app.use('/',(req,res) => {
    
    res.send("Backend Is up and running");

});



app.listen(port, () => {

    console.log(`Example app listening at http://localhost:${port}`)

});
const express = require('express');
const cors = require("cors");


const twilioRouter = require("./routes/twilio");


const app = express();
const port = 3000;


app.use(cors());

app.use('/twilio',twilioRouter);

app.use('/',(req,res) => {
    
    res.send("Backend Is up and running");

});



app.listen(port, () => {

    console.log(`Example app listening at http://localhost:${port}`)

});
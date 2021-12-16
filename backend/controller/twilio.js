const twilio = require("twilio");

const accId = process.env.TWILIO_ACCOUNT_ID;
const authToken = process.env.TWILIO_AUTH_TOKEN;

const client = new twilio(accId,authToken);

const notifyUsers = async(req,res,next) => {
    
    const { message,phoneNumber } = req.body;

    console.log("Message is " + message);    

    try{

        const data = await client.messages
            .create({
                body: message,
                to: `whatsapp:${phoneNumber}`,
                from: "whatsapp:+14155238886"
            });

        console.log(data);
        
        res.status(201).json({ messages:"Data has been sent to the user" });

    }catch(err){
        console.log(err);

    }
};



module.exports = { notifyUsers };
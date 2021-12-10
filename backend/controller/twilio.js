const twilio = require("twilio");

const accId = "AC2afd314ab314d7d87c425a0d42a5da47";
const authToken = "aae1d7ff301f16989dfa3f1730288203";

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
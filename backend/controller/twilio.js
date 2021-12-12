const twilio = require("twilio");
const { sampleProducts } = require("./products");
const accId = "AC2afd314ab314d7d87c425a0d42a5da47";
const authToken = "aae1d7ff301f16989dfa3f1730288203";

const client = new twilio(accId,authToken);
const MessagingResponse = twilio.twiml.MessagingResponse;

const notifyUsers = async(req,res,next) => {
    
    const { message,phoneNumber } = req.body; 

    try{

        const idStrings = message.trim().substring(1,message.length - 1);

        console.log(idStrings);

        const ids = idStrings.split(', ').map(i => Number.parseInt(i));

        console.log(ids);
        let productsInterested = "";

        let count = 0;
        ids.map(id => sampleProducts.map((product) => {
            if(id == product._id){
                productsInterested += ++count + ") Product: " + product.name + ", Price is " + product.price + "\n"
            }
        }))

        console.log(productsInterested);

        const data = await client.messages
            .create({
                body: productsInterested,
                to: `whatsapp:${phoneNumber}`,
                from: "whatsapp:+14155238886"
            });

        // console.log(data);
        
        res.status(201).json({ messages:"Data has been sent to the user" });

    }catch(err){
        console.log(err);

    }
};

const usersReply = (req,res) => {   
    const msg = req.body.Body;

    const twiml = new MessagingResponse();
    twiml.message(`The message you sent is ${msg}`)
    res.writeHead(200,{ 'Content-type':'text/xml' });
    res.end(twiml.toString());

};

module.exports = { notifyUsers,usersReply };
const sampleSrc = "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_960_720.jpg";

const sampleProducts = 
    [
        {name:"Apple",src:sampleSrc,price:300,_id:0},
        {name:"Banana",src:sampleSrc,price:100,_id:1},
        {name:"Carrot",src:sampleSrc,price:50,_id:2},
        {name:"Dick",src:sampleSrc,price:9000,_id:3}
    ];

const getAllProducts = (req,res,next) => {
    res.status(200).json(sampleProducts);
}

module.exports = { getAllProducts };
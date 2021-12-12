const sampleSrc = "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_960_720.jpg";

const sampleProducts = 
    [
        {name:"Nike Jordan Shoes",src:"https://cdn-images.farfetch-contents.com/14/43/69/43/14436943_21290505_600.jpg,price:300",price:34000,_id:0},
        {name:"Apple Iphone 13",src:"https://cdn.pixabay.com/photo/2021/09/25/17/43/iphone-13-6655518__480.jpg",price:120000,_id:1},
        {name:"Google Pixel 4",src:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_BhvFbZoIUvxuCm2SpqMUURmzw5iLJShU2rwnYrNITfh6oAkbNCC6NYc&s=10",price:15000,_id:2},
        {name:"Samsung Galaxy Fold 3",src:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEtm6GlY0A2T-b7BURgAEjohWz4lfmvT_8eUz5WpMPyWZ0e8SS&s",price:90000,_id:3},
        {name:"Fit bit z2",src:"https://image.shutterstock.com/image-photo/fitness-bracelet-isolated-on-white-260nw-1262029681.jpg",price:9000,_id:4},
        {name:"LG Fridge",src:"https://i.gadgets360cdn.com/products/single-door-refrigerator-190-l-gl-d201ascy-large-96292-166689-1595845600-1.jpeg?downsize=*:180",price:65000,_id:5},
        {name:"Sony TV",src:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuL4RjofevEyRn7huHL4WsLkj7OF7GLEJ39w&usqp=CAU",price:15400,_id:6},
        {name:"Omen Laptop",src:"https://www.omen.com/content/dam/sites/omen/worldwide/laptops/starmade-and-valkyrie/Valkyrie_15_80w_NonNumpad_4-Zone_MicaSilver_nonODD_nonFPR_CoreSet_RearLeft_640x440.png",price:265000,_id:7},
        {name:"JBL Headphones",src:"https://in.jbl.com/dw/image/v2/AAUJ_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dwae2159f2/JBL_TUNE700BT_ProductImage_Hero_Blue02.png?sw=537&sfrm=png",price:10000,_id:8},
        {name:"G-Shock Watch",src:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcp5BQpu43bx1g65jMKQreV7p01rfowA52PA&usqp=CAU",price:15000,_id:9}
    ]   

const getAllProducts = (req,res,next) => {
    res.status(200).json(sampleProducts);
}

module.exports = { getAllProducts,sampleProducts };


/*
  ProductData("Nike Jordan Shoes", "0", "145",
        "https://cdn-images.farfetch-contents.com/14/43/69/43/14436943_21290505_600.jpg"),
    ProductData("Apple iphone 13", "1", "100",
        "https://cdn.pixabay.com/photo/2021/09/25/17/43/iphone-13-6655518__480.jpg"),
    ProductData("Samsung Galaxy fold 3", "2", "1150",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEtm6GlY0A2T-b7BURgAEjohWz4lfmvT_8eUz5WpMPyWZ0e8SS&s"),
    ProductData("Google pixel 4", "3", "950",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_BhvFbZoIUvxuCm2SpqMUURmzw5iLJShU2rwnYrNITfh6oAkbNCC6NYc&s=10"),
    ProductData("G-Shock watch", "4", "200",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcp5BQpu43bx1g65jMKQreV7p01rfowA52PA&usqp=CAU"),
    ProductData("Fit bit z2", "5", "32.5",
        "https://image.shutterstock.com/image-photo/fitness-bracelet-isolated-on-white-260nw-1262029681.jpg"),
    ProductData("LG Fridge", "6", "65.99",
        "https://i.gadgets360cdn.com/products/single-door-refrigerator-190-l-gl-d201ascy-large-96292-166689-1595845600-1.jpeg?downsize=*:180"),
    ProductData("Sony TV", "7", "54.8",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuL4RjofevEyRn7huHL4WsLkj7OF7GLEJ39w&usqp=CAU"),
    ProductData("Omen Laptop", "8", "1050",
        "https://www.omen.com/content/dam/sites/omen/worldwide/laptops/starmade-and-valkyrie/Valkyrie_15_80w_NonNumpad_4-Zone_MicaSilver_nonODD_nonFPR_CoreSet_RearLeft_640x440.png"),
    ProductData("JBL Headphones", "9", "250",
        "https://in.jbl.com/dw/image/v2/AAUJ_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dwae2159f2/JBL_TUNE700BT_ProductImage_Hero_Blue02.png?sw=537&sfrm=png"),
  ];*/

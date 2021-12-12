// ignore_for_file: unnecessary_new
import 'dart:convert';

import 'package:Depoo/about_screen.dart';
import 'package:Depoo/services.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
// import 'package:twilio_flutter/twilio_flutter.dart';

// class start

class ProductData {
  final String name, id, price, src;

  ProductData(this.name, this.id, this.price, this.src);

  /*factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
        name: json['name'],
        id: json['id'],
        price: json['price'],
        src: json['src']);
  }*/
}

// class end

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _saved = <ProductData>[];
  //var data = [];

  // START

  Future getData() async {
    //print("In");
    var response = await http
        .get(Uri.parse("http://localhost:3000/products/getAllProducts"));

    var jsonData = jsonDecode(response.body);

    List<ProductData> productData = [];

    for (var u in jsonData) {
      ProductData dataa = ProductData(u['name'], u['id'], u['price'], u['src']);
      productData.add(dataa);
    }
    //print("Out");
    print(productData);

    return productData;
  }

  // END

  List<ProductData> data = [
    ProductData("Dwain", "0", "99",
        "https://cdn-images.farfetch-contents.com/14/43/69/43/14436943_21290505_600.jpg"),
    ProductData("Pearline", "1", "99",
        "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData(
        "Delora", "2", "99", "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData("Kendricks", "3", "99",
        "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData(
        "Elsi", "4", "99", "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData(
        "Laurel", "5", "99", "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData(
        "Robyn", "6", "99", "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData(
        "Lelia", "7", "99", "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData(
        "Faith", "8", "99", "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData("Miquela", "9", "99",
        "http://dummyimage.com/210x100.png/dddddd/000000"),
    ProductData("Enrique", "10", "99",
        "http://dummyimage.com/210x100.png/dddddd/000000"),
  ];

  /*Widget _buildRow(ProductData pair) {
    final alreadySaved = _saved.contains(pair);
    ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {},
                /*trailing: Icon(
                    alreadySaved ? Icons.favorite : Icons.favorite_border,
                    color: alreadySaved ? Colors.red : null,
                  ),*/
                title: Text(data[index].name),
                subtitle: Text(data[index].price.toString()),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index].src),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          );
        });
  }*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // here the desired height
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.exit_to_app)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 1.0,
          // ignore: prefer_const_constructors
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: const SizedBox(
                height: 50.0,
                child: Text(
                  "Depoo",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  title: Text(data[index].name),
                  subtitle: Text(data[index].price.toString()),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data[index].src),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            );
          }),
      /* Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10.0),
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 3,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }),
          ),
        ),
      ),*/
      bottomNavigationBar: new Container(
        color: Colors.blueAccent,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            // alignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: const Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: const Icon(
                  Icons.account_box,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (const AboutScreen())),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

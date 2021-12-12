// ignore_for_file: unnecessary_new
import 'dart:convert';

import 'package:Depoo/login_screen.dart';

import 'package:Depoo/about_screen.dart';
import 'package:Depoo/http_get_services.dart';
import 'package:Depoo/http_post_services.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<ProductData>> data;

  @override
  void initState() {
    super.initState();
    data = fetchProductData();
  }

  Set<int> fav = {};

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // here the desired height
        child: AppBar(
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  createProductData("+919989900301", fav.toString());
                },
                icon: const Icon(Icons.add))
          ],
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
      body: FutureBuilder<List<ProductData>>(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  bool isFav = false;
                  Color color = Colors.grey;
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 4.0),
                    child: Card(
                      child: ListTile(
                        onTap: () {
                          // To call Function
                        },
                        trailing: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: color,
                          ),
                          onPressed: () {
                            setState(() {
                              isFav = !isFav;
                              if (isFav) {
                                color = Colors.red;
                                fav.add(snapshot.data![index].id);
                              } else {
                                fav.remove(snapshot.data![index].id);
                                color = Colors.black;
                              }
                            });
                          },
                        ),
                        title: Text(snapshot.data![index].name),
                        subtitle: Text(snapshot.data![index].price.toString()),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(snapshot.data![index].src),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
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
/*List<ProductData> data = [
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

  
  /*factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
        name: json['name'],
        id: json['id'],
        price: json['price'],
        src: json['src']);
  }*/



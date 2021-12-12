// ignore_for_file: unnecessary_new
import 'package:Depoo/about_screen.dart';
import 'package:Depoo/services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data = [];

  /*List<ProductData> data = [
    ProductData(
        name: "Apple",
        id: 0,
        price: 300.0,
        src:
            "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_960_720.jpg"),
    ProductData(
        name: "Banana",
        id: 1,
        price: 100.0,
        src:
            "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_960_720.jpg"),
    ProductData(
        name: "Carrot",
        id: 2,
        price: 50.0,
        src:
            "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_960_720.jpg"),
    ProductData(
        name: "Dragon Fruit",
        id: 3,
        price: 999.0,
        src:
            "https://cdn.pixabay.com/photo/2016/11/18/13/47/apple-1834639_960_720.jpg"),
  ];*/

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
          itemCount: 4, //data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () async {
                    print('hello');
                    print(await fetchProductData(data));
                    //print(data);
                    // print('object');
                  },
                  title: Text("Text"), //Text(data[index].name),
                  subtitle: Text("Text"), //Text(data[index].price.toString()),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.white,
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

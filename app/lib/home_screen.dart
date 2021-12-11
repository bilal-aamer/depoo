// ignore_for_file: unnecessary_new

import 'package:app/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 1.0,
        // ignore: prefer_const_constructors
        title: SizedBox(
            height: 35.0,
            child: const Text(
              "Depoo",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
      ),
      body: Padding(
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
                    MaterialPageRoute(builder: (context) => (AboutScreen())),
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

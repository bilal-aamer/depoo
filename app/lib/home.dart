import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75.0), // here the desired height
          child: AppBar(
            title: const Center(
              child: Text(
                "depoo",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  '$index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

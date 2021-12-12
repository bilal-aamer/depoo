import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List> fetchProductData(var data) async {
  const url = "http://localhost:3000/products/getAllProducts";

  final response = await get(Uri.parse(url));

  final jsonData = jsonDecode(response.body) as List;

  return jsonData;
}

class ProductData {
  final String name;
  final String id;
  final String price;
  final String src;

  ProductData(
      {required this.name,
      required this.id,
      required this.price,
      required this.src});

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
        name: json['name'],
        id: json['id'],
        price: json['price'],
        src: json['src']);
  }
}
/*
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<ProductData>> futureProductData;

  @override
  void initState() {
    super.initState();
    futureProductData = fetchProductData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<ProductData>(
            future: futureProductData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.name);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}*/

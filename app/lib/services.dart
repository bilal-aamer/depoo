import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

Future<List<ProductData>> fetchProductData() async {
  const url = "http://192.168.1.4:3000/products/getAllProducts";

  final response = await get(Uri.parse(url));

  //List myModels = (json.decode(response.body) as List);
  //.map((i) => ProductData.fromJson(i))
  //.toList();

  final jsonData = jsonDecode(response.body).cast<Map<String, dynamic>>();
  //print(myModels);
  //print(response.body);
  print(jsonData);
  //final List<ProductData> list = [ProductData.fromJson(jsonData)];
  //print(list);
  return jsonData
      .map<ProductData>((json) => ProductData.fromJson(json))
      .toList();
}

class ProductData {
  final String name;
  final int id;
  final int price;
  final String src;

  ProductData(
      {required this.name,
      required this.id,
      required this.price,
      required this.src});

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
        name: json['name'] as String,
        id: json['_id'] as int,
        price: json['price'] as int,
        src: json['src'] as String);
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

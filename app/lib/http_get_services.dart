// HTTP Get Request

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

Future<List<ProductData>> fetchProductData() async {
  const url = "http://192.168.1.4:3000/products/getAllProducts";

  final response = await get(Uri.parse(url));

  final jsonData = jsonDecode(response.body).cast<Map<String, dynamic>>();
  print(jsonData);
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

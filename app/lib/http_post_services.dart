import 'dart:async';
import 'dart:convert';

import 'package:Depoo/http_get_services.dart';
import 'package:http/http.dart' as http;

Future<ProductData> createProductData(String phoneNo, String message) async {
  final response = await http.post(
    Uri.parse('http://192.168.1.4:3000/twilio/notifyUsers'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(<String, String>{
      'phoneNumber': phoneNo,
      'message': message,
    }),
  );

  if (response.statusCode == 201) {
    return ProductData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class Apiservices {
  Future getAllproduct() async {
    final allproductUrl = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(allproductUrl);
    print(response.body);
    return json.decode(response.body);
  }

  Future getAllproductDetails(int id) async {
    final allproductdetailsUrl =
        Uri.parse("https://fakestoreapi.com/products/$id");
    final response = await http.get(allproductdetailsUrl);
    print(response.body);
    return json.decode(response.body);
  }
}

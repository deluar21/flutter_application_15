import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_15/Api%20home.dart';

class ProductDetails extends StatelessWidget {
  final int id;
  ProductDetails(this.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
       
      ),
      body: FutureBuilder(
          future: Apiservices().getAllproductDetails(id),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Image.network(
                    snapshot.data['image'],
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('BDT' + snapshot.data['price'].toString()),
                   SizedBox(
                    height: 10,
                  ),
                  
                ],
              );
            }
            return Center(
              child: Text('Loading....'),
            );
          }),
    );
  }
}

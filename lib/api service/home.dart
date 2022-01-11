import 'package:flutter/material.dart';
import 'package:flutter_application_15/Api%20home.dart';
import 'package:flutter_application_15/productdetails.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: Apiservices().getAllproduct(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(snapshot.data[index]['image']),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductDetails(snapshot.data[index]['id'])));
                  },
                );
              },
            );
          }
          return Center(
            child: Text('Loading....'),
          );
        },
      ),
    );
  }
}

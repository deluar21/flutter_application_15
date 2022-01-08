import 'package:flutter/material.dart';
import 'package:flutter_application_15/api%20service/home.dart';
import 'package:flutter_application_15/main.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Homepage(),
  ));
}

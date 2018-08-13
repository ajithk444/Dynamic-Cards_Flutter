import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: Colors.indigo,
          accentColor: Colors.yellowAccent
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter - Dynamic Cards'),
        ),
        body:  SingleChildScrollView(child:  ProductManager(initialItem:'Item Root'),),
      ),
    );
  }
}

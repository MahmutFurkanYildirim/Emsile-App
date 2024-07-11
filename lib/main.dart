import 'package:flutter/material.dart';
import 'homePage.dart'; // Ana sayfa içeriği için oluşturduğunuz dosya


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Ana sayfa içeriği burada çağrılıyor
    );
  }
}

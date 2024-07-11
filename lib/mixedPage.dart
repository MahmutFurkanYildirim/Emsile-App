import 'package:flutter/material.dart';

class MixedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İsim ve Fiiler',
          style: TextStyle(
            fontFamily: "Bona",
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          'İsim ve Fiiler',
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

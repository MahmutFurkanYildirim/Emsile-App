import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emsile Öğreniyorum', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            Divider(
              color: Colors.grey[600],
              thickness: 2,
              height: 20,
            ),
            SizedBox(height: 8.0),
            Text(
              'Buraya yazmak istediğiniz metinleri ekleyebilirsiniz.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
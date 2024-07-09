import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(
                'Emsile',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Ana sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share_outlined),
              title: Text('Paylaş'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.error_outline),
              title: Text('Hata bildir'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(color: Colors.black),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Uygulama hakkında'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star_rate_outlined),
              title: Text('Uygulamayı puanla'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Data Loaded'),
      ),
    );
  }
}
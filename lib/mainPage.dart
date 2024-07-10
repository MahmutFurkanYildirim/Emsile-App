import 'package:emsile/aboutUs.dart';
import 'package:emsile/settingsPage.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text(
                'Ana sayfa',
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => settingsPage(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.share_outlined),
              title: const Text('Paylaş'),
              onTap: () {
                Navigator.pop(context);
                _shareApp(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.error_outline),
              title: const Text('Hata bildir'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(color: Colors.black),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Uygulama hakkında'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutUs(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_rate_outlined),
              title: const Text('Uygulamayı puanla'),
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

  void _shareApp(BuildContext context) {
    final String text =
        'Bu harika uygulamayı indir! [https://uzem.ifam.com.tr/]';
    Share.share(text);
  }
}

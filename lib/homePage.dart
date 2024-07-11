import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'aboutUs.dart';
import 'settingsPage.dart';
import 'loadingPage.dart';
import 'namePage.dart';
import 'verbPage.dart';
import 'mixedPage.dart';
import 'keyboardDismisser.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;

  final Uri app = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.example.emsile_ogreniyorum');

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context)  {
    if (_isLoading) {
      return LoadingPage();
    } else {
      return KeyboardDismisser(
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ana Sayfa',
            style: TextStyle(
              fontFamily: "Bona",
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Ana sayfa'),
                onTap: () {
                  Navigator.pop(context);
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
                onTap: () async {
                  if (await canLaunchUrl(app)) {
                    await launchUrl(app);
                  } else {
                    throw 'Uygulama açılamadı $app';
                  }
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
                title: const Text('Uygulamayı Puanla'),
                onTap: () async {
                  if (await canLaunchUrl(app)) {
                    await launchUrl(app);
                  } else {
                    throw 'Could not launch $app';
                  }
                },
              ),
            ],
          ),
        ),
        body: _buildContent(),
      )
      );
    }
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20), // Boşluk ekledim
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Ara...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 20), // Boşluk ekledim
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => VerbPage()),
                  );
                },
                child: Text('Fiiler'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NamePage()),
                  );
                },
                child: Text('İsimler'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MixedPage()),
                  );
                },
                child: Text('Karışık'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _shareApp(BuildContext context) {
    final String text =
        'Bu harika uygulamayı indir! [https://uzem.ifam.com.tr/]';
    Share.share(text);
  }
}

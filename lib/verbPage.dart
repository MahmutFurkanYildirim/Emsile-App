import 'dart:convert';

import 'package:emsile/word_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerbPage extends StatefulWidget {
  @override
  _FiilerPageState createState() => _FiilerPageState();
}

class _FiilerPageState extends State<VerbPage> {
  List<bool> _selectedItems = List.generate(10, (index) => false);
  Words? datas;

  void _loadData() async {
    final dataString = await rootBundle.loadString('assets/files/data.json');
    final dataJson = jsonDecode(dataString);

    datas = Words.fromJson(dataJson);
    print(datas);
    setState(() {});

  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fiiler',
          style: TextStyle(
            fontFamily: "Bona",
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 60, 10, 30),
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.5,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Burada yapılacak işlemler
            print('${datas?.fiiler?[index]?.ad ?? ""} tıklandı.');
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.teal),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${datas?.fiiler?[index]?.ad ?? ""}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(height: 5.0), // Daha küçük boşluk
                Checkbox(
                  value: _selectedItems[index],
                  onChanged: (bool? value) {
                    setState(() {
                      _selectedItems[index] = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

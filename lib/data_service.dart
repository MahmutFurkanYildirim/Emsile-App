import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class DataService {
  static Future<Map<String, dynamic>> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    return jsonDecode(jsonString);
  }
}

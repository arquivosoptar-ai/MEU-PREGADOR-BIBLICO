import 'dart:convert';
import 'package:flutter/services.dart';

class BibleRepository {
  static Future<Map<String, dynamic>> carregarIndex() async {
    final data = await rootBundle.loadString('assets/biblia/index.json');
    return json.decode(data);
  }

  static Future<Map<String, dynamic>> carregarLivro(String caminho) async {
    final data = await rootBundle.loadString(caminho);
    return json.decode(data);
  }
}

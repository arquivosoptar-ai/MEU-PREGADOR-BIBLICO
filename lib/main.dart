import 'package:flutter/material.dart';
import 'features/sermon_generator/book_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pregador Bíblico',
      home: const BookListPage(),
    );
  }
}

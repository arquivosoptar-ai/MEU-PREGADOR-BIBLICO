import 'package:flutter/material.dart';
import 'features/livros/livros_page.dart';

void main() {
  runApp(const PregadorBiblicoApp());
}

class PregadorBiblicoApp extends StatelessWidget {
  const PregadorBiblicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LivrosPage(),
    );
  }
}

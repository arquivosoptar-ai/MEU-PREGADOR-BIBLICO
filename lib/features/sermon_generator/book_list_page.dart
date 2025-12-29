import 'package:flutter/material.dart';
import '../../core/bible_repository.dart';
import 'chapter_page.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Livros Bíblicos')),
      body: FutureBuilder(
        future: BibleRepository.carregarIndex(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final data = snapshot.data as Map<String, dynamic>;
          final livros = [...data['acf'], ...data['apocrifos']];
          return ListView.builder(
            itemCount: livros.length,
            itemBuilder: (context, index) {
              final livro = livros[index];
              return ListTile(
                title: Text(livro['nome']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChapterPage(livro['arquivo'], livro['nome']),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

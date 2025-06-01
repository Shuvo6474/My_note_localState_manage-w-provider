//🧠 ৩. main.dart - এ Provider wrap করো

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'document_model.dart'; // ai file tumi banabe
import 'new_doc_page.dart'; // ai file tumi banabe

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => DocumentModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Doc Clone',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(child: Text('Welcome to Google Doc Clone')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const NewDocPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

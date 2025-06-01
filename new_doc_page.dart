//📝 ৪. new_doc_page.dart - এ Provider ব্যবহার করো

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'document_model.dart';

class NewDocPage extends StatelessWidget {
  const NewDocPage({super.key});

  @override
  Widget build(BuildContext context) {
    final docModel = Provider.of<DocumentModel>(context);
    final controller = TextEditingController(text: docModel.content);

    return Scaffold(
      appBar: AppBar(title: const Text('New Document')),
      body: Column(
        children: [
          // Writing Area
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: controller,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  hintText: "Start writing...",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.multiline,
                onChanged: (value) => docModel.updateContent(value),
              ),
            ),
          ),
          const Divider(thickness: 1),
          // Preview Area
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Text(
                  docModel.content.isEmpty ? 'Live Preview...' : docModel.content,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

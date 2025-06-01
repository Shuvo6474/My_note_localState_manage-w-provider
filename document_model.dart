import 'package:flutter/foundation.dart';

class DocumentModel with ChangeNotifier {
  String _content = '';

  String get content => _content;

  void updateContent(String newContent) {
    _content = newContent;
    notifyListeners();
  }
}

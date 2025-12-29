import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'code_editor.dart';

class CodeEditorPage extends StatelessWidget {
  CodeEditorPage({super.key});

  final TextEditingController _controller = TextEditingController(
    text: '''
void main() {
  print("Hello World");
}
''',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: CodeEditor(controller: _controller),
    );
  }
}

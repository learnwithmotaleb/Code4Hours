import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'code_compiler.dart';

class CodePage extends StatelessWidget {
  const CodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        title: const Text('Code Example'),
        backgroundColor: const Color(0xFF161B22),
      ),
      body: ListView(
        children: const [
          CodeBlock(
            code: '''Hello world
            print("Sonia")'''
          ),
        ],
      ),
    );
  }
}

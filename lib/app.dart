import 'package:flutter/material.dart';
import 'package:practices/project/compiler/code_compiler.dart';
import 'package:practices/project/compiler/code_editor_page.dart';
import 'package:practices/project/compiler/code_page.dart';

import 'getx/part1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: CodeEditorPage(),
    );
  }
}
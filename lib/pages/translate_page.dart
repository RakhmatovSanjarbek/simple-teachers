import 'package:flutter/material.dart';

class TranslatePage extends StatefulWidget {
  const TranslatePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TranslatePageState createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translate page'),
      ),
      body: const Center(
        child: Text("Translate page"),
      ),
    );
  }
}
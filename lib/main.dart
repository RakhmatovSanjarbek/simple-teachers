import 'package:flutter/material.dart';
import 'package:sipmle_teachers/pages/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      home: const MyPageView(),

    );
  }
}

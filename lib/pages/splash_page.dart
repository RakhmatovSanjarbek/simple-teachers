import 'package:flutter/material.dart';
import 'package:sipmle_teachers/pages/page_view.dart';
import 'package:sipmle_teachers/pages/select_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    navigatorToNextPage(context);
    return const Scaffold(
      body: Center(
        child: Text("Splash Page"),
      ),
    );
  }

  void navigatorToNextPage(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const MyPageView()),
            (route) => false);
      },
    );
  }
}

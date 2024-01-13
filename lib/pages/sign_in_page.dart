import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sipmle_teachers/pages/main_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signIn() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == "a" && password == "a") {
      // Foydalanuvchi to'g'ri kiritgan, yana nima qilishni shu yerdan qo'shishingiz mumkin
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const MainPage()),
              (route) => false);    } else {
      // Foydalanuvchi xato kiritgan
      showErrorDialog("User name yoki parol xato! ");
    }
  }

  void showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xatolik"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lottie/sign_in.json'),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "Enter your username",
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  onTap: (){
                    signIn();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 64.0,
                    decoration: BoxDecoration(
                        color: const Color(0xff0938cc),
                        borderRadius: BorderRadius.circular(32.0)),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

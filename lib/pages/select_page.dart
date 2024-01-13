import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sipmle_teachers/pages/sign_in_page.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              // color: Colors.blue,
              width: double.infinity,
              height: 500.0,
              child:
                  Lottie.asset('assets/lottie/select_page.json',),
              //     const Text(
              //   "Select lottie",
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 32.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ),
            SizedBox(
              // color: Colors.green,
              height: 200.0,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignInScreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 32.0, right: 32.0),
                      width: double.infinity,
                      height: 72.0,
                      decoration: BoxDecoration(
                          color: const Color(0xff0938cc),
                          borderRadius: BorderRadius.circular(32.0)),
                      child: const Text(
                        "Teacher's",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0,),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 32.0, right: 32.0),
                    width: double.infinity,
                    height: 72.0,
                    decoration: BoxDecoration(
                        color: const Color(0xff0938cc),
                        borderRadius: BorderRadius.circular(32.0)),
                    child: const Text(
                      "Student's",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

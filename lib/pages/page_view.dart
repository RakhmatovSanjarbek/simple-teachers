import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sipmle_teachers/pages/select_page.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 200.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64.0),
                          topRight: Radius.circular(64.0)),
                      color: Color(0x718fb3e8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/lottie/pageview_book.json"),
                      const Text(
                        "Books and daily topics in English ",
                        style: TextStyle(
                          color: Color(0xff0509d3),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 200.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64.0),
                          topRight: Radius.circular(64.0)),
                      color: Color(0x718fb3e8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/lottie/pageview_verbs.json"),
                      const Text(
                          "A collection of Dictionaries and",
                        style: TextStyle(
                          color: Color(0xff0509d3),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      const Text(
                          "irregular Verbs",
                        style: TextStyle(
                          color: Color(0xff0509d3),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 200.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64.0),
                          topRight: Radius.circular(64.0)),
                      color: Color(0x718fb3e8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/lottie/pageview_quiz1.json"),
                      const Text(
                          "A set of Quizzes and Student",
                        style: TextStyle(
                          color: Color(0xff0509d3),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      const Text(
                          "assessment sections",
                        style: TextStyle(
                          color: Color(0xff0509d3),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            margin: const EdgeInsets.only(bottom: 24.0),
            width: double.infinity,
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100.0,
                  height: 52.0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.navigate_before,
                      size: 40.0,
                      color: Color(0xff0509d3),
                    ),
                    onPressed: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                ),
                Row(
                  children: [
                    _currentPage == 0
                        ? Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: const Color(0xff0509d3),
                            ),
                          )
                        : Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.grey),
                          ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    _currentPage == 1
                        ? Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: const Color(0xff0509d3),
                            ),
                          )
                        : Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.grey),
                          ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    _currentPage == 2
                        ? Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: const Color(0xff0509d3),
                            ),
                          )
                        : Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.grey),
                          )
                  ],
                ),
                _currentPage < 2
                    ? SizedBox(
                        width: 100.0,
                        height: 52.0,
                        child: IconButton(
                          icon: const Icon(
                            Icons.navigate_next,
                            size: 40.0,
                            color: Color(0xff0509d3),
                          ),
                          onPressed: () {
                            if (_currentPage < 2) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SelectPage()),
                              (route) => false);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 100.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color(0xff0509d3),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sipmle_teachers/pages/main_pages/avaluation_page.dart';
import 'package:sipmle_teachers/pages/main_pages/books_and_topics_page.dart';
import 'package:sipmle_teachers/pages/main_pages/dictionaries_page.dart';
import 'package:sipmle_teachers/pages/main_pages/quiz_page.dart';
import 'package:sipmle_teachers/pages/main_pages/verbs_page.dart';
import 'package:sipmle_teachers/widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0938cc),
        title: const Text(
          "English Teacher",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 22.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.add,
            size: 22.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Image.asset("assets/image/home_page_banner.png"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BooksAndTopicsPage(
                      appbarTitle: "Books",
                      bookName: "READING ABOUT",
                      bookDiscreption: "READING ABOUT(Slow and Fast)",
                      bookUrl: "assets/books/book_1.pdf"),
                ),
              );
            },
            child: HomePageWidgets(
              homeName: 'Books',
              homeImage: 'textbooks.jpg',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BooksAndTopicsPage(
                      appbarTitle: "Topics",
                      bookName: "Lesson 1",
                      bookDiscreption: "Verbs and dictionaries",
                      bookUrl: "assets/books/lesson1.pdf"),
                ),
              );
            },
            child: HomePageWidgets(
              homeName: 'Topics',
              homeImage: 'topics.webp',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const DictionariesPage()));
            },
            child: HomePageWidgets(
              homeName: 'Dictionaries',
              homeImage: 'dictionaries.jpg',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const VerbsPage()));
            },
            child: HomePageWidgets(
              homeName: 'Verbs',
              homeImage: 'verbs2.webp',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const QuizScreen()));
            },
            child: HomePageWidgets(
              homeName: 'Quiz',
              homeImage: 'quiz.jpg',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const EvaluationPage()));
            },
            child: HomePageWidgets(
              homeName: 'Evaluation',
              homeImage: 'evaluation.jpg',
            ),
          ),
        ],
      ),
    );
  }
}

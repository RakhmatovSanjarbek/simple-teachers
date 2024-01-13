import 'package:flutter/material.dart';

class EvaluationPage extends StatefulWidget {
  const EvaluationPage({super.key});

  @override
  State<EvaluationPage> createState() => _EvaluationPageState();
}

class _EvaluationPageState extends State<EvaluationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0938cc),
        title: const Text(
          "Evaluation",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 24.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.add,
            size: 28.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 12.0,
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
        return Container(
          alignment: Alignment.center,
          padding:  const EdgeInsets.all( 16.0),
          margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          width: double.infinity,
          height: 200.0,
          decoration: BoxDecoration(
            color: const Color(0xfde1e4ec),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Text(
                    "- Rahmatov Sanjarbek",
                    style: TextStyle(
                      color: Color(0xff1130a9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Divider(
                  color: Color(0xff1c8310),
                  thickness: 2.0,
                ),
                Expanded(
                  child: Text(
                    "1st independent work  - 4.0",
                    style: TextStyle(
                      color: Color(0xffa91111),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    "2st independent work  - 5.0",
                    style: TextStyle(
                      color: Color(0xff113ca9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    "3st independent work  - 3.0",
                    style: TextStyle(
                      color: Color(0xff32a911),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    "4st independent work  - 3.0",
                    style: TextStyle(
                      color: Color(0xffa91111),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    "5st independent work  - 5.0",
                    style: TextStyle(
                      color: Color(0xff113ca9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Divider(
                  color: Color(0xff1c8310),
                  thickness: 2.0,
                ),
                Expanded(
                  child: Text(
                    "Daily score    3+5+3+4+4+5",
                    style: TextStyle(
                      color: Color(0xff113ca9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

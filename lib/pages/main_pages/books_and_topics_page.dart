import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BooksAndTopicsPage extends StatefulWidget {
  BooksAndTopicsPage({
    super.key,
    required this.appbarTitle,
    required this.bookName,
    required this.bookDiscreption,
    required this.bookUrl,
  });

  String appbarTitle;
  String bookName;
  String bookDiscreption;
  final String bookUrl;

  @override
  State<BooksAndTopicsPage> createState() => _BooksAndTopicsPageState();
}

class _BooksAndTopicsPageState extends State<BooksAndTopicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0938cc),
        title: Text(
          widget.appbarTitle,
          style: const TextStyle(
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
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PdfPage(
                    appBarTitle: widget.bookName, bookUrl: widget.bookUrl),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
                color: const Color(0x98a8c0ea),
                borderRadius: BorderRadius.circular(32.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.bookName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  widget.bookDiscreption,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
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

// ignore: must_be_immutable
class PdfPage extends StatefulWidget {
  PdfPage({
    super.key,
    required this.appBarTitle,
    required this.bookUrl,
  });

  String appBarTitle;
  final String bookUrl;

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0938cc),
        title: Text(
          widget.appBarTitle,
          style: const TextStyle(
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
      body: Center(
        child: Text(widget.bookUrl),
      )

      // PDFView(
      //   filePath: widget.bookUrl,
      //   enableSwipe: true, // Qo'shiladigan gestlar orqali o'tish
      //   swipeHorizontal: true, // Gorizontal gestlar
      //   autoSpacing: false, // Avtomatik joylashgan bo'shliqlar
      //   pageSnap: true, // Qo'shiladigan sahifalarga avto o'tish
      //   pageFling: false, // Fling olayotganida sahifalarni o'tkazish
      // ),
    );
  }
}

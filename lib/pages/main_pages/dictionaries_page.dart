import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipmle_teachers/widgets/costm_dictionar_widgets.dart';

class DictionariesPage extends StatefulWidget {
  const DictionariesPage({super.key});

  @override
  State<DictionariesPage> createState() => _DictionariesPageState();
}

class _DictionariesPageState extends State<DictionariesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        backgroundColor: const Color(0xff0938cc),
        title: const Text(
          "Dictionaries",
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
          SizedBox(width: 8.0,),
          Icon(
            Icons.add,
            size: 28.0,
            color: Colors.white,
          ),
          SizedBox(width: 12.0,),
        ],
      ),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        return CosrmDictionariesWidget(inglishDictionar: 'Books', uzbekDictionar: 'Kitoblar', transkription: "book's",);
      }),
    );
  }
}



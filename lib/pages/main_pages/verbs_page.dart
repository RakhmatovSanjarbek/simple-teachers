import 'package:flutter/material.dart';
import 'package:sipmle_teachers/widgets/costm_verbs_widget.dart';

class VerbsPage extends StatefulWidget {
  const VerbsPage({super.key});

  @override
  State<VerbsPage> createState() => _VerbsPageState();
}

class _VerbsPageState extends State<VerbsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0938cc),
        title: const Text(
          "Verbs",
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
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return CostmVerbsWidget(
          translation: "Bo'lmoq",
          infinitife: 'Be',
          pastSimple: 'Was/were',
          pastParticiple: 'Been',
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';

class HomePageWidgets extends StatefulWidget {
  HomePageWidgets({super.key, required this.homeName, required this.homeImage});

  String homeName;
  String homeImage;

  @override
  State<HomePageWidgets> createState() => _HomePageWidgetsState();
}

class _HomePageWidgetsState extends State<HomePageWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 200.0,
      decoration: BoxDecoration(
        color: const Color(0xffdee1e8),
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(24.0,),topLeft: Radius.circular(24.0)),
            child: Image.asset("assets/image/${widget.homeImage}",width: double.infinity,height: 140.0,fit: BoxFit.cover,),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: const Divider(
              color: Colors.black,
              thickness: 2.0,
            ),
          ),
          Text(widget.homeName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CosrmDictionariesWidget extends StatefulWidget {
  CosrmDictionariesWidget({super.key,required this.inglishDictionar,required this.uzbekDictionar,required this.transkription,});

  String inglishDictionar;
  String transkription;
  String uzbekDictionar;

  @override
  State<CosrmDictionariesWidget> createState() => _CosrmDictionariesWidgetState();
}

class _CosrmDictionariesWidgetState extends State<CosrmDictionariesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      margin: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: const Color(0xfde1e4ec),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Text(widget.inglishDictionar,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Color(0xff0938cc)),maxLines: 1,)),
                Expanded(child: Text("[ ${widget.transkription} ]",style: const TextStyle(color: Color(0xff349f0a)),maxLines: 1,)),
                Expanded(child: Text(widget.uzbekDictionar,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14.0,color: Color(0xf99d1313)),maxLines: 1,))
              ],
            ),
          ),
          const Icon(Icons.volume_up,color: Color(0xff9d1419),size: 28.0,)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CostmVerbsWidget extends StatefulWidget {
  CostmVerbsWidget({
    super.key,
    required this.translation,
    required this.infinitife,
    required this.pastSimple,
    required this.pastParticiple,
  });

  String translation;
  String infinitife;
  String pastSimple;
  String pastParticiple;

  @override
  State<CostmVerbsWidget> createState() => _CostmVerbsWidgetState();
}

class _CostmVerbsWidgetState extends State<CostmVerbsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding:  const EdgeInsets.all( 16.0),
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      width: double.infinity,
      height: 160.0,
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
                Expanded(
                  child: Text(
                    "- ${widget.translation}",
                    style: const TextStyle(
                      color: Color(0xff1130a9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                const Divider(
                  color: Color(0xff1c8310),
                  thickness: 2.0,
                ),
                Expanded(
                  child: Text(
                    "Infinitife:            - ${widget.infinitife}",
                    style: const TextStyle(
                      color: Color(0xffa91111),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Past Simple:      - ${widget.pastSimple}",
                    style: const TextStyle(
                      color: Color(0xff113ca9),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Past Participle: - ${widget.pastParticiple}",
                    style: const TextStyle(
                      color: Color(0xff32a911),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.favorite_border,
            color: Color(0xffc90808),
            size: 28.0,
          )
        ],
      ),
    );
  }
}

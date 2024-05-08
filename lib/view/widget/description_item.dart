import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

class DynamicCardWidget extends StatelessWidget {
  TextStyle customTextStyle({
    double? textSize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: textSize ?? 14.0,
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: fontFamily ?? 'Kalpurush',
    );
  }

  final String title;
  final String title2;
  final String subtitleText;
  final int subtitleNumber;
  final String itemCount;
  final IconData iconData;
  final String description;

  const DynamicCardWidget({
    required this.title,
    required this.title2,
    required this.subtitleText,
    required this.subtitleNumber,
    required this.itemCount,
    required this.iconData,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: const Color(0xFFFFFFFF),
      elevation: .1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    HexagonWidget.pointy(
                      cornerRadius: 14,
                      width: 53,
                      color: const Color(0xFF70BC66),
                      padding: 4.0,
                      child: Text(
                        itemCount,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: customTextStyle(
                                textSize: 15,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF5D646F))),
                        Text('হাদিস $subtitleNumber',
                            style: customTextStyle(
                                textSize: 15,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFF218A67))),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 26,
                      decoration: BoxDecoration(
                        color: const Color(0xFF47B892),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        child: Text(
                          title2,
                          style: customTextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.more_vert_sharp,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              description,
              style: customTextStyle(
                  textSize: 22,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF353535),
                  fontFamily: 'Kfgq',
              ),
              textAlign: TextAlign.end,
              maxLines: 20,
            ),

          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
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

  // Define properties for chapter number, title, and content
  final String chapterNumber;
  final String chapterTitle;
  final String chapterContent;

  // Constructor to initialize properties
  const CardWidget({
    required this.chapterNumber,
    required this.chapterTitle,
    required this.chapterContent,
  });

  @override
  Widget build(BuildContext context) {
    // Return a Card widget with specified styling and content
    return Card(
      color: const Color(0xFFFFFFFF),
      elevation: .1,
      margin: const EdgeInsets.all(11.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display chapter number with custom style
                Text(
                  '$chapterNumber: ',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 9,
                ),
                Flexible(
                  child: Column(
                    children: [
                      // Display chapter title with custom style
                      Text(
                        chapterTitle,
                        style:  TextStyle(
                          //color: Color(0xFF5D646F),
                          color: Colors.black.withOpacity(.7),
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 9,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),

            const SizedBox(height: 22.0),
            // Display chapter content with custom style
            Text(
              chapterContent,
              style: customTextStyle(
                textSize: 17,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF7E818A).withOpacity(.8),
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

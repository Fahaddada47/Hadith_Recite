import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String bookTitle;
  final String chapterTitle;

  const AppBarWidget({
    super.key,
    required this.bookTitle,
    required this.chapterTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              bookTitle.isNotEmpty ? bookTitle : 'Loading...',
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: 'Kalpurush',
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              chapterTitle.isNotEmpty ? chapterTitle : 'Loading...',
              style: const TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontFamily: 'Kalpurush',
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.drag_handle_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ],
      backgroundColor: const Color(0xFF1AA483),
    );
  }
}

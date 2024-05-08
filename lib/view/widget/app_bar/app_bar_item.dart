import 'package:flutter/material.dart';
import '../../../data/db_helper.dart';
import 'app_bar_widget.dart';

class AppBarItem extends StatefulWidget {
  @override
  _AppBarItemState createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  final DbHelper dbHelper = DbHelper();

  late String bookTitle = '';
  late String chapterTitle = '';

  @override
  void initState() {
    super.initState();
    fetchBookAndChapterData();
  }

  Future<void> fetchBookAndChapterData() async {
    try {
      final List<Map<String, dynamic>> books = await dbHelper.getBooks();
      final List<Map<String, dynamic>> chapters = await dbHelper.getChapter();

      if (books.isNotEmpty && chapters.isNotEmpty) {
        setState(() {
          bookTitle = books[0]['title'] ?? ''; // Update the field name
          chapterTitle = chapters[0]['title'] ?? ''; // Update the field name
        });
      }
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      bookTitle: bookTitle,
      chapterTitle: chapterTitle,
    );
  }
}

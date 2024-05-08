import 'package:flutter/material.dart';
import 'package:hadith_task/view/widget/description_item.dart';
import '../../../data/db_helper.dart';

class DescCardItem extends StatefulWidget {
  const DescCardItem({Key? key}) : super(key: key);

  @override
  State<DescCardItem> createState() => _DescCardItemState();
}

class _DescCardItemState extends State<DescCardItem> {
  final DbHelper _dbHelper = DbHelper();
  List<Map<String, dynamic>> bookData = [];
  List<Map<String, dynamic>> hadithData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
    fetchhadithData();
  }

  Future<void> fetchData() async {
    try {
      final List<Map<String, dynamic>> book = await _dbHelper.getBooks();
      setState(() {
        bookData = book;
      });
    } catch (error) {
      print('Error fetching book data: $error');
    }
  }

  Future<void> fetchhadithData() async {
    try {
      final List<Map<String, dynamic>> hadith = await _dbHelper.getHadiths();
      setState(() {
        hadithData = hadith;
      });
    } catch (error) {
      print('Error fetching hadith data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemCount: bookData.length,
        itemBuilder: (BuildContext context, int index) {
          String bookAbvrCode = bookData[index]['abvr_code'] ?? '';
          String bookTitle = bookData[index]['title'] ?? '';
          String hadithGrade = hadithData[index]['grade'] ?? '';
          String hadithArDiacless = hadithData[index]['ar_diacless'] ?? '';
          int hadithId = hadithData[index]['hadith_id'] ?? 0;

          return DynamicCardWidget(
            title: bookTitle,
            title2: hadithGrade,
            subtitleText: hadithId.toString(),
            subtitleNumber: index + 1, // Increment index to start from 1
            itemCount: bookAbvrCode,
            iconData: Icons.ac_unit,
            description: hadithArDiacless,
          );
        },
      ),
    );
  }
}

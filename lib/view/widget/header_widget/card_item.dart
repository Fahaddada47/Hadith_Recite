import 'package:flutter/material.dart';
import '../../../data/db_helper.dart';
import 'card_widget.dart';

class HeaderCardItem extends StatefulWidget {
  const HeaderCardItem({Key? key}) : super(key: key);

  @override
  State<HeaderCardItem> createState() => _HeaderCardItemState();
}

class _HeaderCardItemState extends State<HeaderCardItem> {
  final DbHelper _dbHelper = DbHelper();
  List<Map<String, dynamic>> sectionData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final List<Map<String, dynamic>> sections = await _dbHelper.getSection();
      setState(() {
        sectionData = sections;
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container( // Wrap with Container to provide a fixed height
      height: 250,
      child: ListView.builder(
        itemCount: sectionData.length,
        itemBuilder: (BuildContext context, int index) {
          String sectionNumber = sectionData[index]['number'];
          String sectionTitle = sectionData[index]['title'];
          String sectionContent = sectionData[index]['preface'];

          return CardWidget(
            chapterNumber: sectionNumber,
            chapterTitle: sectionTitle,
            chapterContent: sectionContent,
          );
        },
      ),
    );
  }
}

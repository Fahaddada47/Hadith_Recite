import 'package:get/get.dart';

import '../data/db_helper.dart';

class AppBarController extends GetxController {
  final DbHelper dbHelper = DbHelper();

  final RxString bookTitle = ''.obs;
  final RxString chapterTitle = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBookAndChapterData();
  }

  Future<void> fetchBookAndChapterData() async {
    try {
      final List<Map<String, dynamic>> books = await dbHelper.getBooks();
      final List<Map<String, dynamic>> chapters = await dbHelper.getChapter();

      if (books.isNotEmpty && chapters.isNotEmpty) {
        bookTitle.value = books[0]['title'] ?? '';
        chapterTitle.value = chapters[0]['title'] ?? '';
      }
    } catch (error) {
      print('Error fetching data: $error');
    }
  }
}
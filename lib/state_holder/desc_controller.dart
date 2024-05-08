import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/db_helper.dart';

class DescCardController extends GetxController {
  final DbHelper _dbHelper = DbHelper();

  final RxList<Map<String, dynamic>> bookData = <Map<String, dynamic>>[].obs;
  final RxList<Map<String, dynamic>> hadithData = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
    fetchHadithData();
  }

  Future<void> fetchData() async {
    try {
      final List<Map<String, dynamic>> book = await _dbHelper.getBooks();
      bookData.assignAll(book);
    } catch (error) {
      print('Error fetching book data: $error');
    }
  }

  Future<void> fetchHadithData() async {
    try {
      final List<Map<String, dynamic>> hadith = await _dbHelper.getHadiths();
      hadithData.assignAll(hadith);
    } catch (error) {
      print('Error fetching hadith data: $error');
    }
  }
}

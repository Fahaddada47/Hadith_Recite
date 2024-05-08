import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/db_helper.dart';

class HeaderCardController extends GetxController {
  final DbHelper _dbHelper = DbHelper();
  final sectionData = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final sections = await _dbHelper.getSection();
      sectionData.assignAll(sections);
    } catch (error) {
      print('Error fetching data: $error');
    }
  }
}

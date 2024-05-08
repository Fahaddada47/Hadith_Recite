import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';

import '../data/book_model.dart'; // Import your data model

class DataController extends GetxController {
  final _isLoading = true.obs;

  bool get isLoading => _isLoading.value;

  Future<List<Book>> loadData() async {
    try {
      _isLoading.value = true;

      String databasesPath = await getDatabasesPath();
      String path = join(databasesPath, 'hadith_db.db');

      final exists = await databaseExists(path);

      if (!exists) {
        await Directory(dirname(path)).create(recursive: true);
        ByteData data = await rootBundle.load('assets/hadith_db.db');
        List<int> bytes =
            data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
        await File(path).writeAsBytes(bytes);
      }

      Database database = await openDatabase(path);

      List<Map<String, dynamic>> bookMaps = await database.query('books');
      List<Book> books = bookMaps.map((map) => Book.fromMap(map)).toList();

      _isLoading.value = false;

      return books;
    } catch (error) {
      print('Error loading data: $error');
      _isLoading.value = false;
      return [];
    }
  }
}

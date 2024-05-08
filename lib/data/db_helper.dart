import 'dart:io';
import 'dart:typed_data';
import 'package:path/path.dart';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "hadith_db.db");

    final exists = await databaseExists(path);

    if (exists) {
      print("Database already exists");
    } else {
      print("Creating a copy from assets");
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (error) {
        print("Error creating directory: $error");
        throw error;
      }

      try {
        ByteData data = await rootBundle.load(join("assets", "hadith_db.db"));
        List<int> bytes =
            data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

        await File(path).writeAsBytes(bytes, flush: true);
        print("Database copied");
      } catch (error) {
        print("Error copying database: $error");
        throw error;
      }
    }

    return await openDatabase(path);
  }

  Future<List<Map<String, dynamic>>> getHadiths() async {
    final Database db = await initDb();
    final List<Map<String, dynamic>> hadiths = await db.query('hadith');
    return hadiths;
  }

  Future<List<Map<String, dynamic>>> getBooks() async {
    final Database db = await initDb();
    final List<Map<String, dynamic>> books = await db.query('books');
    return books;
  }

  Future<List<Map<String, dynamic>>> getChapter() async {
    final Database db = await initDb();
    final List<Map<String, dynamic>> chapter = await db.query('chapter');
    return chapter;
  }

  Future<List<Map<String, dynamic>>> getSection() async {
    final Database db = await initDb();
    final List<Map<String, dynamic>> section = await db.query('section');
    return section;
  }
}

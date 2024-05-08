// // book_model.dart
// // class Book {
// //   final int id;
// //   final String title;
// //   final String titleAr;
// //   final int numberOfHadiths;
// //   final String abvrCode;
// //   final String bookName;
// //   final String bookDescr;
// //
// //   Book({
// //     required this.id,
// //     required this.title,
// //     required this.titleAr,
// //     required this.numberOfHadiths,
// //     required this.abvrCode,
// //     required this.bookName,
// //     required this.bookDescr,
// //   });
// //
// //   // Define the fromMap constructor
// //   factory Book.fromMap(Map<String, dynamic> map) {
// //     return Book(
// //       id: map['id'],
// //       title: map['title'],
// //       titleAr: map['title_ar'],
// //       numberOfHadiths: map['number_of_hadis'],
// //       abvrCode: map['abvr_code'],
// //       bookName: map['book_name'],
// //       bookDescr: map['book_descr'],
// //     );
// //   }
// // }
//
// // chapter_model.dart
// class Chapter {
//   final int id;
//   final int chapterId;
//   final int bookId;
//   final String title;
//   final int number;
//   final String hadithRange;
//   final String bookName;
//
//   Chapter({
//     required this.id,
//     required this.chapterId,
//     required this.bookId,
//     required this.title,
//     required this.number,
//     required this.hadithRange,
//     required this.bookName,
//   });
// }
//
// // hadith_model.dart
// class Hadith {
//   final int hadithId;
//   final int bookId;
//   final String bookName;
//   final int chapterId;
//   final int sectionId;
//   final String narrator;
//   final String bn;
//   final String ar;
//   final String arDiacless;
//   final int gradeId;
//   final int grade;
//   final String gradeColor;
//
//   Hadith({
//     required this.hadithId,
//     required this.bookId,
//     required this.bookName,
//     required this.chapterId,
//     required this.sectionId,
//     required this.narrator,
//     required this.bn,
//     required this.ar,
//     required this.arDiacless,
//     required this.gradeId,
//     required this.grade,
//     required this.gradeColor,
//   });
// }
//
// section_model.dart
class Section {
  final int id;
  final int bookId;
  final int bookName;
  final int chapterId;
  final int sectionId;
  final String title;
  final String preface;
  final int number;

  Section({
    required this.id,
    required this.bookId,
    required this.bookName,
    required this.chapterId,
    required this.sectionId,
    required this.title,
    required this.preface,
    required this.number,
  });
}

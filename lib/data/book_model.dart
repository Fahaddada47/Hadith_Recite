class Book {
  final int id;
  final String title;
  final String titleAr;
  final int numberOfHadiths;
  final String abvrCode;
  final String bookName;
  final String bookDescr;

  Book({
    required this.id,
    required this.title,
    required this.titleAr,
    required this.numberOfHadiths,
    required this.abvrCode,
    required this.bookName,
    required this.bookDescr,
  });

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      titleAr: map['title_ar'],
      numberOfHadiths: map['number_of_hadis'],
      abvrCode: map['abvr_code'],
      bookName: map['book_name'],
      bookDescr: map['book_descr'],
    );
  }
}

class Chapter {
  final int id;
  final int chapterId;
  final int bookId;
  final String title;
  final int number;
  final String hadithRange;
  final String bookName;

  Chapter({
    required this.id,
    required this.chapterId,
    required this.bookId,
    required this.title,
    required this.number,
    required this.hadithRange,
    required this.bookName,
  });

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      id: map['id'],
      chapterId: map['chapter_id'],
      bookId: map['book_id'],
      title: map['title'],
      number: map['number'],
      hadithRange: map['hadith_range'],
      bookName: map['book_name'],
    );
  }
}

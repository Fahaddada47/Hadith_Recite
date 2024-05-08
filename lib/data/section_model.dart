class Section {
  final int id;
  final int bookId;
  final String bookName; // Changed type to String
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

  factory Section.fromMap(Map<String, dynamic> map) {
    return Section(
      id: map['id'] as int,
      bookId: map['bookId'] as int,
      bookName: map['bookName'] as String, // Corrected type to String
      chapterId: map['chapterId'] as int,
      sectionId: map['sectionId'] as int,
      title: map['title'] as String,
      preface: map['preface'] as String,
      number: map['number'] as int,
    );
  }
}

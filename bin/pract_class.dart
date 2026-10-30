void main() {
  Book book1 = Book(title: '1984', pages: 328, author: 'Автор');
  Book book2 = Book(title: 'Мастер и Маргарита', pages: 480, author: 'Автор');
  Book book3 = Book.withRating(
    title: 'Преступление и наказание',
    pages: 672,
    author: 'Достоевский',
    rating: 4.9,
  );
  book1.bookRating = 4.7;
  book1.showInfo();
  book2.showInfo();
  book3.showInfo();
  print(book1.bookRating);
}

class Book {
  String title;
  int pages;
  double _rating = 0.0;
  String _author;

  Book({required this.title, required this.pages, required String author}): _author = author;
  Book.withRating({
    required this.title,
    required this.pages,
    required String author,
    required double rating,
  }) : _author = author, _rating=rating;

  //Сеттер
  set bookRating(double value) {
    if (value >= 0 && value <= 5)
      _rating = value;
    else {
      print('Ошибка: рейтинг должен быть от 0 до 5');
    }
  }
  //Геттер
  double get bookRating => _rating;

  void showInfo() {
    print('Книга : $title, Страниц: $pages, Рейтинг: $_rating');
  }
}

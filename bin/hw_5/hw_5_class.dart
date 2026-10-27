class Book {
  String _title;
  String _author;
  double _rating = 0;

  // Обычный конструктор
  Book(this._title, this._author);

  // Именованный конструктор
  Book.withRating(this._title, this._author, double rating) {
    this.rating = rating;
  }
  // Геттеры
  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  // Сеттер с проверкой
  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    } else {
      print('Error: Rating must be between 0 and 10');
    }
  }

  // Метод вывода информации
  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}

// Класс библиотека
class Library {
  String name;
  List<Book> _books = [];

  Library(this.name);

  // Количество книг
  int get booksCount => _books.length;

  // Добавление книги
  void addBook(Book b) {
    _books.add(b);
  }

  // Вывод списка книг
  void showBooks() {
    print('Books list:');
    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }
}
